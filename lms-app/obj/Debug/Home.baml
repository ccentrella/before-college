   M S B A M L   `   `   `  ����  
Record Pro    RecordPro.Home   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      -   5          N� Title$  Welcome��5       N� WindowTitle$ Welcome - Record Pro��5      .��5      � $��1��6   $��2��5	       � ColumnDefinitions 5
      �� 5      $��0��6   �� 5      .+�5      �� $
��Auto=�6   $
��Auto=�5      $y�	Collapsed=�5      .��5      �  � RowDefinitions 5      �� 5      $	��100��6   �� 5      .+�5      �� $��Recent Files��6   �� 5      $��Recent Places��6   $��1��5   	   5      5      �� 5      $��2��6   �� 5      $��1��6   $
��Auto=�5      .��5      �� $
��Apps��6   .��5      � -   5        $
��Apps��5         AppsWrapPanelStyle#���   5        J� 	AllowDrop .  .+�5#      �� -   5        $��UpdateRecordButton��5$        UpgradeRecordButtonStyle#���  5#      .��5&      �� $��Update Record.png��6   5'      �� 5(      -   5          ManageSettingsStyle#���  5(      .��5*      �� $��Options.png��6   5+      �� 5,      -   5          ManageCoursesStyle#���  5,      .��5.      �� $��Manage Courses.png��6   5/      �� 50      -   5          
AboutStyle#���  50      .��52      �� $��	About.png��6   53      �� 54      -   5          
ClockStyle#���  54      .��56      �� $��	Clock.png��6   $��10q�6!   57      58      5:      5;      � 5<      -   5        $��UpdateRecordPopup��5<   
   $	��300��5=      $
��Auto��5>       � PlacementTarget 5?      ��  �� ElementName$ UpdateRecordButton��.��5@      �   CrystalBackgroundFill3#���  6
    5A      �� 5B      $��40 �6   �� 5C      �� 5D      $
��Auto �6    5F      �� 5G      $	��100 �6   �� 5H      .+�5J      ��   CrystalHeadings2#���  6   $��2��5K   	   $��Updating Made Easier��5L   	   $��Center=�5M   	   $��Center=�5N   	     CrystalBackgroundFill2#���  5O   	   �� 5P      $��Manage Users.png��6   $��1��5Q   	   �� 5R       	 
DataStyle2#��� 	 6   $��Center=�5S   
   $��Center=�5T   
   $��1��5U   
   $��1��5V   
   $|��vJust click the button above to record all of the student's assignments, grades, notes, and times for a specified date.��5W   
   �� 5X      -	   5        $��Right=�5X      $��2��5Y      $��1��5Z      $��
OK, Got It��5[       
 CrystalDialogButton#��� 
 5\      5]      5^      5_      5`      5b      