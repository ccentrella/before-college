   M S B A M L   `   `   `  ����  
Record Pro    RecordPro.InputDialog   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      -   5        $��inputDialog��5        � Title$  
Enter Text��5      $	��350��5       � SizeToContent$ Height=�5       � WindowStyle$
 None=�5       � ShowInTaskbar .   � WindowStartupLocation$ CenterOwner=�5
       � 
ResizeMode$ NoResize=�5         CrystalChrome'  !System.Windows.Shell.WindowChrome   WindowChrome# �   5        CrystalWindows#���  5      $��1q�6,   .��5      �  � RowDefinitions 5      �� 5      $��27 �6   �� 5      .+�5      �� $��0q�5      $��Center=�5      $��Center=�5        CrystalHeadings2#���  5        CrystalBackgroundFill2#���  5      ��5   
   �� *Title+ �� ElementName$ inputDialog��5      � 5      $��1��6	   $��5q�5       5      �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   .+�5!      �� -   5        $��Instruction��5!       
 Label2#���  5"      $��Enter text below:��5#      �� 5$      -   5        $��	userInput��5%      $��1��5$      	 �� 	IsEnabled	 . 5&      �� 5'      
 �� Orientation$
 
Horizontal=�6   $��0,7,0,0q�5(      $��2��5)      $��Right=�5*      .+�5+      �� -   5        $	��_OK��5+       �� 	IsDefault .   CrystalDialogButton#���  5-      5.      �� 5/      -   5        $��_Cancel��5/       �� IsCancel . #���  51      52      53      54      55      56      