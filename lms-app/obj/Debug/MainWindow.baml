   M S B A M L   `   `   `  ����  
Record Pro    RecordPro.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      -   5        $��
mainWindow��5        � Title$  Record Pro 2017��5      $	��400��5      $	��800��5      $	��200��5       � Icon$ Record Pro 2017 Logo.png��5	       � UseLayoutRounding .    CrystalWindows#���   5      $��8q�5        CrystalChrome'  !System.Windows.Shell.WindowChrome   WindowChrome# �  5        HeaderFooterBackground#���  5       J� CommandBindings 5      )  #System.Windows.Input.CommandBinding  5   
   -   5           Command$* $SystemCommands.MinimizeWindowCommand��5      5        5   
   -   5        $' !SystemCommands.CloseWindowCommand��5      5        5   
   -   5        $) #SystemCommands.RestoreWindowCommand��5      5        5   
   -   5        $* $SystemCommands.MaximizeWindowCommand��5      5       � TaskbarItemInfo 5       *  $System.Windows.Shell.TaskbarItemInfo  5!   
   -   5        WindowProgress��   ProgressValue 5"      �� *Value+ �� ElementName$ Progress��.��5$      � 	 � RowDefinitions	 5%   
   �� 5&      $��20 �6   �� 5'      $
��Auto �6   �� 5(      $
��Auto �6   �� 5)      .+�5+   
   �� -   5        
 K� ZIndex$
 1��5+      $��2��6!   $��0q�5-      $��Center=�5.      $��Center=�5/        CrystalHeadings2#���  50      ��5,      �� *Title+ �� RelativeSource �� *FindAncestor+ �� AncestorType" �51      �� 52   
   -   5        $��chrome��52      $
 1��53       �� Orientation$ 
Horizontal=�54      $��	0,-8,-8,0q�55      $��Right=�56      $	��Top=�57      .+�58      �� $	��—��6     CrystalChromeButton#���  59      |�.   � ToolTip$ Minimize��5;      $*��$SystemCommands.MinimizeWindowCommand��5<         IsHitTestVisibleInChrome . $��0q�5>      $��20��5?      $��0q�5@      $��35��5A      �� 5B      |�.  #���  5C      $)��#SystemCommands.RestoreWindowCommand��5D      $ Restore��5E       . $��0q�5G      $��20��5H      $��0q�5I      $��35��5J      .��5K      F� s����        � z     � z  z �     z �@9����- �@KL ��- �@KL �ا �@9���ا �@9�� 	= �@KL  	= �    @B � z @B 	
����  �5L      5M      �� 5N      |�.  #���  5O      $*��$SystemCommands.MaximizeWindowCommand��5P      $ Maximize��5Q       . $��0q�5S      $��20��5T      $��0q�5U      $��35��5V      .��5W      F� =����        � z     � z  z �     z �    @B � z @B 	
����  �5X      5Y      �� 5Z      $��X��6     CloseButton#���  5[      |�.  $��0q�5]      $ Close��5^      $'��!SystemCommands.CloseWindowCommand��5_       . $��20��5a      $��35��5b      $��0q�5c      5d      �� 5e   
   $��2��6   $
 0��5f   	   �� 5g   
   -	   5        $��AvatarButton��5g      $��1��5h        CrystalIconButton#���  5i      $��Right=�5j      $��0,0,5,3q�5l      $��0q�5m       5k      �� *	Content+$ 
UserHeader��.��5o      �� -
   5        $��Avatar��5o      $��20��5p      $��20��5q      $!��Generic Avatar (Unisex).png��5r       J� 	CacheMode 5s      &   System.Windows.Media.BitmapCache  5t         SnapsToDevicePixels .     RenderAtScale$ 2Q�5u   
    J� Clip 5w      @� 5x       @� RadiusX$ 10Q�6&    @� Center$ 10,10&�5y       @� RadiusY$ 10Q�5z      5|      5}      � 5~   
   -   5        $��AvatarPopup��5~       � 	StaysOpen .  $
��Auto��5�      $	��200��5�      $
��Auto��5�       � PlacementTarget 5�      �� $ AvatarButton��.��5�      � 	 5�      �� 5�      $
��Auto �6$   �� 5�       � ColumnDefinitions 5�      �� 5�      �� 5�      $
��Auto �6'   .+�5�      �� $��3��6   $��2��5�      $��1q�5�        PopupBackground#���  5�        CrystalBorder#���  5�      �� 5�      -   5        $��
UserHeader��5�      #���  5�   	   $��Sign In��5�   	   �� 5�      $��28��5�   	   $	��4,0q�5�   	   $��28��5�   	   $��1��5�   	   $��Right=�5�   	   ��5�      �� *Source+$ Avatar�� 5�        5�       .  $ 2Q�5�       5�      @� 5�      $ 14,14&�6*   $ 14Q�5�      $ 14Q�5�      5�       � 5�      -   5        $��	SmallPane��5�   	   $��1��5�      $��2��5�   	   $
��Auto��5�   	     � Source$ SignIn1.xaml?�5�   	     � NavigationUIVisibility$ Hidden=�5�   	     � JournalOwnership$ UsesParentJournal=�5�   	   5�      5�      5�      � 5�   
   -   5         �Name$ Progress��5�       	 MainProgress#��� 	 5�      $	��0,2q�5�       � Maximum$ 1Q�5�      $��Stretch=�5�      $��2��5�      $��Bottom=�5�      $y�	Collapsed=�5�       � 5�   
   -   5          �Name$ 	MainFrame��5�       
 CrystalWindowFill#��� 
 5�      $ UsesParentJournal=�5�      $��3��5�      $ Welcome.xaml?�5�      $ Hidden=�5�      6'   5�      5�      