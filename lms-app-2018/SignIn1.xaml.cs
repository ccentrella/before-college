﻿
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Security;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Interop;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Windows.Shell;


namespace RecordPro
{
	/// <summary>
	/// Interaction logic for SignIn1.xaml
	/// </summary>
	public partial class SignIn1 : Page
	{
		public SignIn1()
		{
			InitializeComponent();
		}

		private void Page_Loaded(object sender, RoutedEventArgs e)
		{
			UserName.Focus(); // Set focus to the user name
		}
		private async void Button_Click(object sender, RoutedEventArgs e)
		{
			// Get the main window
			MainWindow window = Application.mWindow as MainWindow;
			if (window == null)
            {
                return;
            }

            #region Prep

            // Prepare the progress bars.
            window.progress.Visibility = Visibility.Visible;
			window.progress.ToolTip = "Searching for valid accounts";
			window.WindowProgress.ProgressState = TaskbarItemProgressState.Normal;
			status.Content = "Searching";
			#endregion

			#region Variables
			string data;
			bool matchFound = false, errorOccurred = false;
			double progressUpdateValue = 0;
			#endregion

			if (Application.Current.Properties["Users Location"] == null)
            {
                return;
            }

            UserName.Visibility = Visibility.Hidden;
			string usersLocation = Application.Current.Properties["Users Location"].ToString();
			try
			{
				var newDirectoryInfo = new DirectoryInfo(usersLocation);
				var directoryCount = newDirectoryInfo.GetDirectories().Length;
				if (directoryCount > 1)
				{
					progressUpdateValue = (double)1 / directoryCount;
					#region Async
					foreach (var folder in newDirectoryInfo.EnumerateDirectories())
					{
						var fileLocation = folder.FullName + "\\config.txt";

						if (!File.Exists(fileLocation))
						{
							errorOccurred = true;
							continue;
						}

						// Attempt to asynchronously parse each file.
						try
						{
							using (var newStreamReader = new StreamReader(fileLocation))
                            {
                                data = await newStreamReader.ReadToEndAsync();
                            }
                        }
						catch (IOException)
						{
							errorOccurred = true;
							continue;
						}
						catch (ArgumentException)
						{
							errorOccurred = true;
							continue;
						}

						var dataUserName = StringFunctions.GetValue(data, "UserName").ToUpperInvariant();
						if (dataUserName == UserName.Text.ToUpperInvariant())
						{
							window.progress.Value = 1; // Notify the user that the user finding process is complete.

							var genderStr = StringFunctions.GetValue(data, "Gender");

                            // Acquire the user's gender.
                            if (!Enum.TryParse<Gender>(genderStr, out Gender gender))
                            {
                                gender = Gender.Unknown;
                            }

                            var imageLocation = folder.FullName + "\\" + StringFunctions.GetValue(data, "Image");

							// Load the user's name
							string name = StringFunctions.GetValue(data, "Name");
							window.UserHeader.Content = name.GetWelcomeMessage();

							// Load the image
							if (!File.Exists(imageLocation))
                            {
                                ImageFunctions.LoadDefaultImage(gender);
                            }
                            else
							{
								try
								{
									var newImage = new BitmapImage();
									newImage.BeginInit();
									newImage.UriSource = new Uri(imageLocation, UriKind.Absolute);
									newImage.DecodePixelWidth = 40;
									newImage.EndInit();
									window.Avatar.Source = newImage;
								}
								catch (FileNotFoundException)
								{
									status.Content = "Image could not be loaded.";
									ImageFunctions.LoadDefaultImage(gender); // Load the default image
								}
								catch (UriFormatException)
								{
									status.Content = "Image could not be loaded";
									ImageFunctions.LoadDefaultImage(gender); // Load the default image
								}
								catch (UnauthorizedAccessException)
								{
									status.Content = "Image could not be loaded";
									ImageFunctions.LoadDefaultImage(gender); // Load the default image
								}
							}

							string password = StringFunctions.GetValue(data, "Password");
							Application.Current.Properties["Password"] = password;
							Application.Current.Properties["Folder"] = folder.FullName;
							Application.Current.Properties["Data"] = data;
							this.NavigationService.Navigate(new SignIn2());
							matchFound = true; // Notify the program that a match has been found.
							break; // Immediately cancel processing the operation.
						}
						else
						{
							window.progress.Value += progressUpdateValue;
						}

					}

					#endregion
				}
			}
			catch (IOException)
			{
				RecordPro.NativeMethods.TaskDialog(new WindowInteropHelper(Application.Current.MainWindow).Handle, IntPtr.Zero, "Error - Record Pro", "Invalid User Path",
					"An error has occurred. The user path is invalid. If the problem continues, contact the Administrator.",
					TaskDialogButtons.Ok, TaskDialogIcon.Error);
			}
			catch (ArgumentException)
			{
				RecordPro.NativeMethods.TaskDialog(new WindowInteropHelper(Application.Current.MainWindow).Handle, IntPtr.Zero, "Error - Record Pro", "Invalid Characters Found",
					"An error has occurred. Invalid characters have been found in the user path. If the problem continues, contact the Administrator.",
					TaskDialogButtons.Ok, TaskDialogIcon.Error);
			}
			catch (UnauthorizedAccessException)
			{
				RecordPro.NativeMethods.TaskDialog(new WindowInteropHelper(Application.Current.MainWindow).Handle, IntPtr.Zero, "Error - Record Pro", "Access Denied",
									"An error has occurred. Access to the user path has been denied. If the problem persists, please contact the Administrator.",
									TaskDialogButtons.Ok, TaskDialogIcon.Error);
			}
			catch (SecurityException)
			{
				RecordPro.NativeMethods.TaskDialog(new WindowInteropHelper(Application.Current.MainWindow).Handle, IntPtr.Zero, "Error - Record Pro", "Access Denied",
									"An error has occurred. Access to the user path has been denied. If the problem persists, please contact the Administrator.",
									TaskDialogButtons.Ok, TaskDialogIcon.Error);
			}
			finally
			{
				// Now hide and reset the progress bars.
				window.progress.Visibility = Visibility.Hidden;
				window.WindowProgress.ProgressState = TaskbarItemProgressState.None;
				window.AvatarButton.IsEnabled = true;	// Enable the button

				// If no match has been found, notify the user.
				if (!matchFound & !errorOccurred)
				{
					UserName.Clear();
					status.Content = "Account Not Found";
					UserName.Visibility = Visibility.Visible;
					UserName.Focus();
				}
				else if (!matchFound & errorOccurred)
				{
					UserName.Clear();
					status.Content = "Account Not Found (Error)";
					UserName.Visibility = Visibility.Visible;
					UserName.Focus();
				}
			}


		}
	}
}
