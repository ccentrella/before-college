   M S B A M L   `   `   `  ����   
Record Pro    RecordPro.MainWindow   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     -   $��
mainWindow��  � Title$  Record Pro 2017��$	��400��$	��800��$	��200�� � Icon$ Record Pro 2017 Logo.png�� � UseLayoutRounding .    CrystalWindows#���   $��8q�  CrystalChrome'  !System.Windows.Shell.WindowChrome   WindowChrome# �    HeaderFooterBackground#���   J� CommandBindings )  #System.Windows.Input.CommandBinding  -      Command$* $SystemCommands.MinimizeWindowCommand��  -   $' !SystemCommands.CloseWindowCommand��  -   $) #SystemCommands.RestoreWindowCommand��  -   $* $SystemCommands.MaximizeWindowCommand�� � TaskbarItemInfo *  $System.Windows.Shell.TaskbarItemInfo  -   WindowProgress��   ProgressValue �� *Value+ �� ElementName$ Progress��.��� 	 � RowDefinitions	 �� $��20 ��� $
��Auto ��� $
��Auto ��� .+��� -   
 K� ZIndex$
 1��$��0q�$��Center=�$��Center=�  CrystalHeadings2#���  ���� *Title+ �� RelativeSource �� *FindAncestor+ �� AncestorType" ��� -   $��chrome��$
 1�� �� Orientation$ 
Horizontal=�$��	0,-8,-8,0q�$��Right=�$	��Top=�.+��� $	��—��  CrystalChromeButton#���  |�.    ChromeButtonBackground#���    ChromeButtonForeground#���   � ToolTip$ Minimize��$*��$SystemCommands.MinimizeWindowCommand��   IsHitTestVisibleInChrome . $��0q�$��20��$��0q�$��35���� |�.  #���  #���  #���  $)��#SystemCommands.RestoreWindowCommand��$ Restore�� . $��0q�$��20��$��0q�$��35��.��F� s����        � z     � z  z �     z �@9����- �@KL ��- �@KL �ا �@9���ا �@9�� 	= �@KL  	= �    @B � z @B 	
����  ��� |�.  #���  #���  #���  $*��$SystemCommands.MaximizeWindowCommand��$ Maximize�� . $��0q�$��20��$��0q�$��35��.��F� =����        � z     � z  z �     z �    @B � z @B 	
����  ��� $��X��#���  |�.  $��0q�  CloseChromeButtonBackground#���    CloseChromeButtonForeground#���  $ Close��$'��!SystemCommands.CloseWindowCommand�� . $��20��$��35��$��0q��� $��2��$
 0���� -	   $��AvatarButton��$��1�� 	 CrystalIconButton#��� 	 $��Right=�$��1,1,5,1q�$��0q� �� *	Content+$ 
UserHeader��.���� -
   $��Avatar��$��20��$��20��$!��Generic Avatar (Unisex).png�� J� 	CacheMode &   System.Windows.Media.BitmapCache     SnapsToDevicePixels .     RenderAtScale$ 2Q� J� Clip @�  @� RadiusX$ 10Q� @� Center$ 10,10&� @� RadiusY$ 10Q�� -   $��AvatarPopup�� � 	StaysOpen .  $
��Auto��$	��200��$
��Auto�� � PlacementTarget �� $ AvatarButton��.��� 	 �� $
��Auto ���  � ColumnDefinitions �� �� $
��Auto �.+��� $��3��$��2��$��1q� 
 PopupBackground#��� 
   CrystalBorder#���  �� -   $��
UserHeader��#���  $��Sign In���� $��28��$	��4,0q�$��28��$��1��$��Right=����� *Source+$ Avatar��    .  $ 2Q� @� $ 14,14&�$ 14Q�$ 14Q� � -   $��	SmallPane��$��1��$��2��$
��Auto��  � Source$ SignIn1.xaml?�  � NavigationUIVisibility$ Hidden=�  � JournalOwnership$ UsesParentJournal=�� -    �Name$ Progress��  MainProgress#���  $	��0,2q� � Maximum$ 1Q�$��Stretch=�$��2��$��Bottom=�$y�	Collapsed=� � -     �Name$ 	MainFrame��  CrystalWindowFill#���  $ UsesParentJournal=�$��3��$ Welcome.xaml?�$ Hidden=�