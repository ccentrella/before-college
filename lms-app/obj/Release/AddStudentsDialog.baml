   M S B A M L   `   `   `  ����   
Record Pro!    RecordPro.AddStudentsDialog   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     -   $��dialog��  � Title$  Add User��$	��300��$	��150��$	��350�� � SizeToContent$ Height=� � WindowStyle$
 None=� � ShowInTaskbar .   � Topmost .  � WindowStartupLocation$ CenterOwner=� � 
ResizeMode$ NoResize=�   CrystalChrome'  !System.Windows.Shell.WindowChrome   WindowChrome# �     CrystalWindows#���  $��1q� J� CommandBindings )  #System.Windows.Input.CommandBinding  -   	   Command$'	 !SystemCommands.CloseWindowCommand��.��� 
 � RowDefinitions
 �� $��27 ��� .+��� $��0q�$��Center=�$��Center=�  CrystalHeadings2#���    CrystalBackgroundFill2#���  ���� *Title+ �� ElementName$ dialog���� -   $��chrome�� �� Orientation$ 
Horizontal=�$��	0,-1,-1,0q�$��Right=�$	��Top=�.+��� $��X��  CrystalChromeButton#���  |�.  $��0q�  CloseChromeButtonBackground#���    CloseChromeButtonForeground#���   � ToolTip$ Close��$'��!SystemCommands.CloseWindowCommand��   IsHitTestVisibleInChrome . $��20��$��35��$��0q�� $��1��$��5q�
 �� $
��Auto ��� .+��� -   $��Instruction�� 
 Label2#���  $'��!Please click the new user to add:���� $��0,7,0,0q�$
��Auto=�$��1��.���� -   $��students��$��1��