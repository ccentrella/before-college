   M S B A M L   `   `   `  ����H  DRecord Pro, Version=1.0.1212.0, Culture=neutral, PublicKeyToken=null%clr-namespace:RecordPro	RecordPro  5          RecordPro.SettingsDialog   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      )localclr-namespace:RecordPro     5      -   5        
Page_1��  N� Title$  Settings��5       N� WindowTitle$ Change Your Settings��5      .��5
      � 
Grid_1�� � RowDefinitions 5      �� 5      RowDefinition_1��6   �� 5      RowDefinition_2��$
��Auto �5   
   .+�5      �� TabControl_1�� �� TabStripPlacement$
 Left=�5      .@�5      �� 	TabItem_1��$��_Personalize��5      .��5      �� ScrollViewer_1��$
��Auto=�5   
   $
��Auto=�5   
   .��5      � 
Grid_2�� 5      �� 5   	   RowDefinition_3��$
��Auto �5      �� 5   	   RowDefinition_4��6   .+�5      �� 
GroupBox_1��$��Profile��5      .��5    	   � 
Grid_3�� 5!   
   �� 5"      RowDefinition_5��$
��Auto �5#      �� 5$      RowDefinition_6��$
��Auto �5%      �� 5&      RowDefinition_7��$
��Auto �5'      �� 5(      RowDefinition_8��$
��Auto �5)      �� 5*      RowDefinition_9��$
��Auto �5+      �� 5,      RowDefinition_10��$
��Auto �5-      �� 5.      RowDefinition_11��$
��Auto �5/       � ColumnDefinitions 51   
   �� 52      ColumnDefinition_1��$
��Auto �53      �� 54      ColumnDefinition_2��6   .+�56   
   �� Label_1��$��Name:��57       
  Label2#���   58      �� 59   
   -   5         ��Name$ NameTextBox��5;      NameTextBox��$��1��5:      5;      �� 5<   
   Label_2��$��
User Name:��5=      $��1��5>      #���   5?      �� 5@   
   -   5        $ UserNameTextBox��5A      UserNameTextBox��$��1��5B      $��1��5C      �� 5D   
   Label_3��$��	Password:��5E      $��2��5F      #���   5G      G� 5H   
   -   5         G�Name$ PasswordTextBox��5I      PasswordTextBox�� G� PasswordChar$ *��5J      $��1��5K      $��2��5L      �� 5M   
   Label_4��$��Confirm Password:��5N      $��3��5O      #���   5P      G� 5Q   
   -   5        $ confirmPasswordTextBox��5R      confirmPasswordTextBox��$ *��5S      $��1��5T      $��3��5U      �� 5V   
   Label_5��$��4��5W      $��Date of Birth:��5X      #���   5Y      (  "System.Windows.Controls.DatePicker  5Z   
   -   5          Name$ 	BirthDate��5[      	BirthDate��	   SelectedDateFormat$
	 Long=�5\      $��1��5]      $��4��5^      �� 5_   
   Label_6��$��5��5`      $��Gender��5a      #���   5b      �� 5c   
   -   5        
 ��Name$
 GenderCombobox��5d      GenderCombobox�� �� SelectedIndex$ 0��5e      $��1��5f      $��5��5g      .@�5h      �� ComboBoxItem_1��$��
Choose One��5i      �� 5j      ComboBoxItem_2��$
��Male��5k      �� 5l      ComboBoxItem_3��$��Female��5m      5n      �� 5o   
   Label_7��$��6��5p      $��Image��5q      #���   5r      � 5s   
   
Grid_4��$��1��5t      $��6��5u       5v      �� 5w      ColumnDefinition_3��6   �� 5x      ColumnDefinition_4��$
��Auto �5y      �� 5z      ColumnDefinition_5��$
��Auto �5{      .+�5}      �� -   5         ��Name$ 
ImageLabel��5~      
ImageLabel��#���   5      �� 5�      -	   5        Button_1��$��1��5�      $��_Change��5�      5�      �� 5�      -
   5        Button_2��$��2��5�      $��_Clear��5�      5�      5�      5�   
   5�   	   �� 5�      
GroupBox_2��$��1��5�      $��	Interface��5�      .��5�   	   � 
Grid_5�� 5�   
   �� 5�      RowDefinition_12��$
��Auto �5�       5�   
   �� 5�      ColumnDefinition_6��$
��Auto �5�      �� 5�      ColumnDefinition_7��6   .+�5�   
   �� Label_8��$��Theme:��5�      #���   5�      �� 5�   
   -   5        $
 ThemeComboBox��5�      ThemeComboBox��$��1��5�      5�   
   5�   	   5�      5�      5�      �� 5�      	TabItem_2��$
��Apps��5�      .��5�      �� ScrollViewer_4��$
��Auto=�5�   
   $
��Auto=�5�   
   .��5�      � 
Grid_6�� 5�      �� 5�   	   RowDefinition_13��$
��Auto �5�      �� 5�   	   RowDefinition_14��6   .+�5�      �� 
GroupBox_3��$
��Apps��5�      .��5�   	   �� StackPanel_1��.+�5�   
   �� -   5        $��showCalendarCheckBox��5�      showCalendarCheckBox��$��Show Calendar Button��5�        	CheckBox2#���  5�      �� 5�   
   -   5        $��showCalculatorCheckBox��5�      showCalculatorCheckBox��$��Show Calculator Button��5�      #���  5�      �� 5�   
   -   5        $��showViewRecordButton��5�      showViewRecordButton��$��Show View Report Button��5�      #���  5�      5�   
   5�   	   �� 5�      
GroupBox_4��$��1��5�      $��Options��5�      .��5�   	   �� StackPanel_2��.+�5�   
   �� -   5        $��
ExpandUser��5�      
ExpandUser��$��Expand User��5�      #���  5�      �� 5�   
   -   5        $��ExpandCourses��5�      ExpandCourses��$��Expand Courses��5�      #���  5�      5�   
   5�   	   5�      5�      5�      �� 5�      	TabItem_3��$��_Notifications��5�      $y�	Collapsed=�5�      .��5�      � 
Grid_7�� 5�      �� 5�      RowDefinition_15��$
��Auto �5�      �� 5�      RowDefinition_16��6   .+�5�      �� 
GroupBox_5��$��Notifications��5�   
   .��5�      �� StackPanel_3��.+�5�   	   �� 
CheckBox_1��$��Show _Notifications��5�      #���  5�      �� 5�   	   
CheckBox_2��$��Make Notification Sounds��5�      #���  5�      5�   	   5�      �� 5�      
GroupBox_6��$��1��5�   
   $&�� Show the Following Notifications��5�   
   .��5�      �� ScrollViewer_2��.��5�   	   �� StackPanel_4��.+�5�   
   �� 
CheckBox_3��$+��%Suspicious activity has been detected��5�      #���  5�      �� 5�   
   
CheckBox_4��$.��(You've almost finished the current grade��5�      #���  5�      �� 5�   
   
CheckBox_5��$,��&School has been completed for the year��5�      #���  5�      �� 5�   
   
CheckBox_6��$��Welcome to Record Pro��5�      #���  5�      5�   
   5�   	   5�      5�      5�      �� 5�      	TabItem_4��|�.  ��5�      �� 5�      TextBlock_1���� 6&   -   5        Hyperlink_1��  TabControlHyperLinks#���  5�       �� TextDecorations 5�      Z� .�5   *   Delete User67   6C   5     5     �� 5     StackPanel_5�� �� Orientation$ 
Horizontal=�5     $��1��5     $��Right=�5     .+�5	     �� -   5        Button_3��$	��_OK��5
       CrystalDialogButton#���  5      �� 	IsDefault . 5     �� 5     -   5        Button_4��$��_Cancel��5     #���  5      �� IsCancel . 5     5     5     5     