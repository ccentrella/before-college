   M S B A M L   `   `   `  ����  
Record Pro    RecordPro.ViewRecord   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      -   5          N� Title$  View Reports��5      .��5	      �  � RowDefinitions 5
      �� 5      $
��Auto �6   �� 5      .+�5      �� -   5         ��Name$ 	userLabel��5   
      CrystalHeadings2#���   5        HeaderFooterBackground#���  5      $��Welcome!��5      5      �� 5      -   5         ��Name$ Grades��5      $��1��5       �� TabStripPlacement$
 Left=�5      � 5      -   5        $��StatisticsPopup��5   
   $	��300��5      $
��Auto��5       � PlacementTarget 5      ��  �� ElementName$ 	userLabel��.��5      �   CrystalBackgroundFill3#���  6
    5      �� 5      $��40 �6   �� 5      �� 5      $
��Auto �6    � ColumnDefinitions 5       �� 5!      $	��100 �6   �� 5"      .+�5$      �� #���   6   $��2��5%   	   $#��Great Organizing At All Times��5&   	   $��Center=�5'   	   $��Center=�5(   	     CrystalBackgroundFill2#���  5)   	   �� 5*      $��Statistics.png��6   $��1��5+   	   �� 5,        
DataStyle2#���  6   $��Center=�5-   
   $��Center=�5.   
   $��1��5/   
   $��1��50   
   $_��YThis view allows you to view great statistics, such as averages, grades, and daily times.��51   
   �� 52      -   5        $��Right=�52      $��2��53      $��1��54      $��
OK, Got It��55        CrystalDialogButton#���  56      57      58      59      5:      5;      