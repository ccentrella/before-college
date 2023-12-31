﻿
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
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
using System.Windows.Media.Animation;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Windows.Shell;
using System.Windows.Threading;






namespace RecordPro
{
	/// <summary>
	/// Interaction logic for ManageStudents.xaml
	/// </summary>
	public partial class ManageStudents : Page
	{
		public ManageStudents()
		{
			InitializeComponent();
		}
		delegate void mainDelegate();

		/// <summary>
		/// Save the list of users for the administrator
		/// </summary>
		private void SaveUsers()
		{
			var newList = new List<string>();

			// Add each user to the list
			foreach (var item in students.Items)
			{
				ListBoxItem lItem = item as ListBoxItem;
				if (item != null && lItem.Tag != null)
                {
                    newList.Add(lItem.Tag.ToString());
                }
            }
			try
			{
				string fileLocation = System.IO.Path.Combine((string)Application.Current.Properties["Current User Location"], "config.txt");
				string data = File.ReadAllText(fileLocation);
				string input = string.Join(",", newList.ToArray());
				string newData = StringFunctions.ReplaceValue(data, "Students", input);
				File.WriteAllText(fileLocation, newData);
				Application.Current.Properties["Students"] = newList.ToArray();
			}
			catch (IOException)
			{
				RecordPro.NativeMethods.TaskDialog(new WindowInteropHelper(Application.Current.MainWindow).Handle, IntPtr.Zero, "Error - Record Pro", "Invalid User Path",
					"An error has occurred. The users path is invalid. If the problem continues, contact the Administrator.",
					TaskDialogButtons.Ok, TaskDialogIcon.Error);
			}
			catch (ArgumentException)
			{
				RecordPro.NativeMethods.TaskDialog(new WindowInteropHelper(Application.Current.MainWindow).Handle, IntPtr.Zero, "Error - Record Pro", "Invalid Characters Found",
					"An error has occurred. Invalid characters have been found in the users path. If the problem continues, contact the Administrator.",
					TaskDialogButtons.Ok, TaskDialogIcon.Error);
			}
			catch (NotSupportedException)
			{
				RecordPro.NativeMethods.TaskDialog(new WindowInteropHelper(Application.Current.MainWindow).Handle, IntPtr.Zero, "Error - Record Pro", "Invalid Characters Found",
					"An error has occurred. The users path is not formatted correctly. If the problem continues, contact the Administrator.",
					TaskDialogButtons.Ok, TaskDialogIcon.Error);
			}
			catch (SecurityException)
			{
				RecordPro.NativeMethods.TaskDialog(new WindowInteropHelper(Application.Current.MainWindow).Handle, IntPtr.Zero, "Error - Record Pro", "Access Denied",
									"An error has occurred. Access to the users path has been denied. If the problem persists, please contact the Administrator.",
							TaskDialogButtons.Ok, TaskDialogIcon.Error);
			}
			catch (UnauthorizedAccessException)
			{
				RecordPro.NativeMethods.TaskDialog(new WindowInteropHelper(Application.Current.MainWindow).Handle, IntPtr.Zero, "Error - Record Pro", "Access Denied",
									"An error has occurred. Access to the users path has been denied. If the problem persists, please contact the Administrator.",
							TaskDialogButtons.Ok, TaskDialogIcon.Error);
			}
		}

		private void NewStudent_Click(object sender, RoutedEventArgs e)
		{
			// Prompt the user to enter the name of the new grade.
			var newUser = new NewUser();
			this.NavigationService.Navigate(newUser);
		}

		private async void Page_Loaded(object sender, RoutedEventArgs e)
		{
			await Dispatcher.BeginInvoke(DispatcherPriority.Background, new mainDelegate(LoadStudents)); // Attempt to load all of the administrator's students
		}

		// Loads the user's grades
		private void LoadStudents()
		{
			// Update the progress
			if (Application.mWindow != null)
			{
				Application.mWindow.progress.Value = 0;
				Application.mWindow.progress.ToolTip = "Loading Students";
				Application.mWindow.progress.Visibility = Visibility.Visible;
				Application.mWindow.TaskbarItemInfo.ProgressState = TaskbarItemProgressState.Normal;

			}

			try
			{
				DirectoryInfo newDirectoryInfo = new DirectoryInfo((string)Application.Current.Properties["Users Location"]);
				int count = newDirectoryInfo.GetDirectories().Length;

				// Only continue if there is at least one user
				if (count == 0)
                {
                    return;
                }

                double progressUpdateValue = 1 / count;
			var studentList = (Collection<string>)Application.Current.Properties["Students"];


				foreach (var folder in newDirectoryInfo.EnumerateDirectories())
				{
					// Add the item if it exists in the administrator's profile
					if (studentList.Contains(folder.Name))
					{
						string location = System.IO.Path.Combine(folder.FullName, "config.txt");
						string data;
						using (var newReader = new StreamReader(location))
                        {
                            data = newReader.ReadToEnd();
                        }

                        string name = StringFunctions.GetValue(data, "Name");
						students.Items.Add(new ListBoxItem() { Content = name, Tag = folder.Name });
					}

					// Update progress
					if (Application.mWindow != null)
                    {
                        Application.mWindow.progress.Value += progressUpdateValue;
                    }
                }
				if (students.Items.CanSort)
                {
                    students.Items.SortDescriptions.Add(new SortDescription("Content", ListSortDirection.Ascending));
                }
            }
			catch (IOException)
			{
				RecordPro.NativeMethods.TaskDialog(new WindowInteropHelper(Application.Current.MainWindow).Handle, IntPtr.Zero, "Error - Record Pro", "Invalid User Path",
					"An error has occurred. The users path is invalid. If the problem continues, contact the Administrator.",
					TaskDialogButtons.Ok, TaskDialogIcon.Error);
			}
			catch (ArgumentException)
			{
				RecordPro.NativeMethods.TaskDialog(new WindowInteropHelper(Application.Current.MainWindow).Handle, IntPtr.Zero, "Error - Record Pro", "Invalid Characters Found",
					"An error has occurred. Invalid characters have been found in the users path. If the problem continues, contact the Administrator.",
					TaskDialogButtons.Ok, TaskDialogIcon.Error);
			}
			catch (SecurityException)
			{
				RecordPro.NativeMethods.TaskDialog(new WindowInteropHelper(Application.Current.MainWindow).Handle, IntPtr.Zero, "Error - Record Pro", "Access Denied",
									"An error has occurred. Access to the users path has been denied. If the problem persists, please contact the Administrator.",
							TaskDialogButtons.Ok, TaskDialogIcon.Error);
			}

			// Update the progress
			if (Application.mWindow != null)
			{
				Application.mWindow.progress.Visibility = Visibility.Hidden;
				Application.mWindow.TaskbarItemInfo.ProgressState = TaskbarItemProgressState.None;
			}
		}

		private void students_SelectionChanged(object sender, SelectionChangedEventArgs e)
		{
			if (students.SelectedItems.Count > 0)
			{
				DoubleAnimation newAnimation = new DoubleAnimation() { To = courseOptions.ActualHeight, Duration = TimeSpan.Parse("0:0:0.5") };
				courseOptions.BeginAnimation(StackPanel.HeightProperty, newAnimation);
			}
			else
			{
				DoubleAnimation newAnimation = new DoubleAnimation() { To = 0, Duration = TimeSpan.Parse("0:0:0.5") };
			}
		}

		private void RenameButton_Click(object sender, RoutedEventArgs e)
		{
			var renameDialog = new InputDialog("Enter User Name", "Please enter the new name:");
			if (Application.mWindow != null)
            {
                renameDialog.Owner = Application.mWindow;
            }

            if (renameDialog.ShowDialog() == true)
			{
				if (string.IsNullOrWhiteSpace(renameDialog.userInput.Text))
				{
					RecordPro.NativeMethods.TaskDialog(new WindowInteropHelper(Application.Current.MainWindow).Handle, IntPtr.Zero, "Invalid Name - Record Pro", "The name is invalid.",
					"The name is invalid. Please enter a valid name.",
			TaskDialogButtons.Ok, TaskDialogIcon.Error);
					return;
				}
				RenameUser(renameDialog.userInput.Text); // Rename the file
			}
		}

		/// <summary>
		/// Renames the appropriate user
		/// </summary>
		/// <param name="fileName">The user's new name</param>
		private void RenameUser(string newName)
		{
			ListBoxItem selectedItem = students.SelectedItem as ListBoxItem;
			if (selectedItem == null && selectedItem.Tag != null)
            {
                return;
            }

            string location = System.IO.Path.Combine((string)Application.Current.Properties["Users Location"],
				selectedItem.Tag.ToString(), "config.txt");

			try
			{
				// Rename the user and update the list box
				string data;
				using (var newReader = new StreamReader(location))
                {
                    data = newReader.ReadToEnd();
                }

                using (var newWriter = new StreamWriter(location))
                {
                    newWriter.Write(data.ReplaceValue("Name", newName));
                }

                selectedItem.Content = newName;
				SaveUsers();
			}
			catch (IOException)
			{
				RecordPro.NativeMethods.TaskDialog(new WindowInteropHelper(Application.Current.MainWindow).Handle, IntPtr.Zero, "Error - Record Pro", "Invalid Path",
					"An error has occurred. The user path is invalid. If the problem continues, contact the Administrator.",
					TaskDialogButtons.Ok, TaskDialogIcon.Error);
			}
			catch (ArgumentException)
			{
				RecordPro.NativeMethods.TaskDialog(new WindowInteropHelper(Application.Current.MainWindow).Handle, IntPtr.Zero, "Error - Record Pro", "Invalid Characters Found",
					"An error has occurred. Invalid characters have been found in the name or user path. Ensure the name contains no invalid characters. "
				+ "If the problem continues, contact the Administrator.", TaskDialogButtons.Ok, TaskDialogIcon.Error);
			}
			catch (NotSupportedException)
			{
				RecordPro.NativeMethods.TaskDialog(new WindowInteropHelper(Application.Current.MainWindow).Handle, IntPtr.Zero, "Error - Record Pro", "Invalid Characters Found",
					"An error has occurred. Invalid characters have been found in the name or user path. Ensure the name contains no invalid characters. "
				+ "If the problem continues, contact the Administrator.", TaskDialogButtons.Ok, TaskDialogIcon.Error);
			}
			catch (UnauthorizedAccessException)
			{
				RecordPro.NativeMethods.TaskDialog(new WindowInteropHelper(Application.Current.MainWindow).Handle, IntPtr.Zero, "Error - Record Pro", "Access Denied",
									"An error has occurred. Access to the user path has been denied. If the problem persists, please contact the Administrator.",
									TaskDialogButtons.Ok, TaskDialogIcon.Error);
			}
		}

		/// <summary>
		/// Deletes the selected user
		/// </summary>
		private void DeleteSelectedUser()
		{
			ListBoxItem selectedItem = students.SelectedItem as ListBoxItem;
			if (selectedItem == null && selectedItem.Tag != null)
            {
                return;
            }

            string location = System.IO.Path.Combine((string)Application.Current.Properties["Users Location"], selectedItem.Tag.ToString());

			// Remove the selected user only if the administrator agrees
			if (RecordPro.NativeMethods.TaskDialog(new WindowInteropHelper(Application.Current.MainWindow).Handle, IntPtr.Zero, "Delete User?",
				"Are you sure you want to delete this user?", "Deleting a user is permanent and cannot be undone.",
				TaskDialogButtons.Yes | TaskDialogButtons.No, TaskDialogIcon.Warning) != TaskDialogResult.Yes)
            {
                return;
            }

            try
			{
				Directory.Delete(location, true);
				students.Items.Remove(selectedItem);
				SaveUsers();
			}
			catch (IOException)
			{
				RecordPro.NativeMethods.TaskDialog(new WindowInteropHelper(Application.Current.MainWindow).Handle, IntPtr.Zero, "Error - Record Pro", "Invalid Path",
					"An error has occurred. The user path is invalid. The grade could not removed. If the problem continues, contact the Administrator.",
					TaskDialogButtons.Ok, TaskDialogIcon.Error);
			}
			catch (ArgumentException)
			{
				RecordPro.NativeMethods.TaskDialog(new WindowInteropHelper(Application.Current.MainWindow).Handle, IntPtr.Zero, "Error - Record Pro", "Invalid Characters Found",
					"An error has occurred. Invalid characters have been found in the name or user path. The grade could not be removed. "
				+ "If the problem continues, contact the Administrator.", TaskDialogButtons.Ok, TaskDialogIcon.Error);
			}
			catch (NotSupportedException)
			{
				RecordPro.NativeMethods.TaskDialog(new WindowInteropHelper(Application.Current.MainWindow).Handle, IntPtr.Zero, "Error - Record Pro", "Invalid Characters Found",
					"An error has occurred. Invalid characters have been found in the name or user path. The grade could not be removed. Ensure the name contains no invalid characters. "
				+ "If the problem continues, contact the Administrator.", TaskDialogButtons.Ok, TaskDialogIcon.Error);
			}
			catch (UnauthorizedAccessException)
			{
				RecordPro.NativeMethods.TaskDialog(new WindowInteropHelper(Application.Current.MainWindow).Handle, IntPtr.Zero, "Error - Record Pro", "Access Denied",
		"An error has occurred. Access to the user path has been denied. The grade could not be removed. If the problem persists, please contact the Administrator.",
			TaskDialogButtons.Ok, TaskDialogIcon.Error);
			}
		}

		private void DeleteButton_Click(object sender, RoutedEventArgs e)
		{
			DeleteSelectedUser(); // Delete the selected user
		}

		private void students_KeyDown(object sender, KeyEventArgs e)
		{
			if (e.Key == Key.Delete)
			{
				students.Items.Remove(students.SelectedItem);
				SaveUsers();
			}
		}

		private void RemoveButton_Click(object sender, RoutedEventArgs e)
		{
			students.Items.Remove(students.SelectedItem);
			SaveUsers();
		}

		private void AddButton_Click(object sender, RoutedEventArgs e)
		{
			var newWindow = new AddStudentsDialog();
			if (Application.mWindow != null)
			{
				newWindow.Owner = Application.mWindow;
			}

			// When a user is clicked, add it to the user's list
			if (newWindow.ShowDialog() == true)
			{
				students.Items.Add(new ListBoxItem() { Content = newWindow.SelectedUser, Tag = newWindow.SelectedLocation });
				if (students.Items.CanSort)
				{
					students.Items.SortDescriptions.Clear();
					students.Items.SortDescriptions.Add(new SortDescription("Content", ListSortDirection.Ascending));
				}
				SaveUsers();
			}
		}
	}
}
