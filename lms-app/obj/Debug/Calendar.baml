   M S B A M L   `   `   `  ����H  DRecord Pro, Version=1.0.1212.0, Culture=neutral, PublicKeyToken=null%clr-namespace:RecordPro	RecordPro  5          RecordPro.Calendar   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      )localclr-namespace:RecordPro     5      -   5          N� WindowTitle$   View Calendar - Record Pro��5       N� Title$ View Assignments��5       J� CommandBindings 5      )  #System.Windows.Input.CommandBinding  5	      -   5           Command$
 Copy��5	      5        5      -   5        $ Delete��5      5       � 	Resources 5      $   RecordPro.UserToolTipConverter   UserToolTipConverter  RecordPro.GradeConverter  GradeConverter(  "RecordPro.GradeVisibilityConverter  GradeVisibilityConverter  RecordPro.Records  Records 	 cMenu m� Command �� DataType � ColumnDefinitions  
UserLabels �� XPath	 � ToolTip
 �� Path �� RelativeSource  GLevelLabels �� 	Converter  	TimeStyle  	DataStyle � RowDefinitions 	 NotesHeaderStyle 
 
NotesStyle��%r  &	        &	      &	 &     &	 9     &	 L     (�� �     5      *	Records+)7   (�� �    5/      *Record+)7  7  7  (�� �    5B      *Data+)  5      6     5      6     5      6#     5      6   �� 5      .@�5      m� $��_Copy��6   $
 Copy��5      �� 5      m� 5      $��_Delete��6   $ Delete��5      m� 5      $��_Modify��6   5      �� 5      $ Records��6   .R�5      Q� ��5      � 5        5!      �� 5"   	   �� 5#   	   $
��Auto �6   .+�5%      �� #���  5&      ��5%      �� $ UserName��	 5'      �� $

 Text� �� *Self+�� 5(      #���  5)      ��5(      ��  �� *Self+$
 Items.Count�	 5*      �� $
 Content� �� *Self+8   5+      5-      5.      �� 5/      $ Record��6   .R�50      �  51      �� 52      $
��Auto �6   �� 53      �� 54      $
��Auto �6   .+�56      �� ��6   �� $ Course��	 57   	   �� *	Content+ �� *Self+�� 58      $��1��6   8��  ��5:   
   �� $
 Time��	 5;   
   �� *Text+ �� *Self+�� 5<      $��2��6   ��5=   	   �� $ Grade����5>   	   �� $
 Content� �� *Self+8  y�5?   	   �� $
 Content� �� *Self+8  5@      5A      �� 5B      $
 Data��6   .R�5C      �� #���  6   ��5D   	   �� $
 Data��	 5E      � 5F       5G      �� 5H   	   $
��Auto �6   �� 5I   	   .+�5K      �� #��� 	 6   $��Notes��5L      �� 5M      #��� 
 6   ��5N      �� $ Notes��5O      5P      5Q      5R      .��5S      �  5T      �� 5U      �� 5V      $
��Auto �6   �� 5W      $	��200 �6   .+�5Y      (� -   5        $��calendarViewbox��5Z       (� Stretch$ Uniform=�5Y      .��5[      &   System.Windows.Controls.Calendar  -   5        $��calendar��5[         IsTodayHighlighted .   CalendarStyle#���  5]      5^      5_      � 5`      -   5        $��CalendarPopup��5`   
   $	��300��5a      $
��Auto��5b      $��Right=�5d       � PlacementTarget 5c      ��  �� ElementName$ calendar��.��5e      �   CrystalBackgroundFill3#���  6
    5f      �� 5g      $��40 �6   �� 5h      �� 5i      $
��Auto �6    5k      �� 5l      $	��100 �6   �� 5m      .+�5o      ��   CrystalHeadings2#���  6   $��2��5p   	   $ ��View Everything in a Flash��5q   	   $��Center=�5r   	   $��Center=�5s   	     CrystalBackgroundFill2#���  5t   	   �� 5u      $��View Calendar.png��6   $��1��5v   	   �� 5w        
DataStyle2#���  6   $��Center=�5x   
   $��Center=�5y   
   $��1��5z   
   $��1��5{   
   $n��hThis view allows you to view and modify the time, grade, data, and notes, for each and every assignment.��5|   
   �� 5}      -   5        $��Right=�5}      $��2��5~      $��1��5      $��
OK, Got It��5�        CrystalDialogButton#���  5�      5�      5�      5�      �� 5�       �� ResizeDirection$ Columns=�6   $��1��5�      $��3��5�        CrystalBorder#���  5�       �� ResizeBehavior$ PreviousAndNext=�5�      � 5�      -   5        $��assignmentPopup��5�   	     CrystalBackgroundFill#���  5�      $��2��5�      $	��100��5�       5�      �� 5�      $
��Auto �6   �� 5�      .+�5�      �� #���  6   $��Center=�5�       �� ContentStringFormat$ {0:D}��5�      ��5�      �� $
 SelectedDate.Date�$ calendar��5�      �� 5�      $
��Auto=�6   $��1��5�   	   .��5�      R� -	   5        $��records��5�       %� IsVirtualizing . 5�   	   5�      5�      5�      5�      