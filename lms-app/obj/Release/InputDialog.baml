   M S B A M L   `   `   `  ����   
Record Pro    RecordPro.InputDialog   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     -   $��inputDialog��  � Title$  
Enter Text��$	��350�� � SizeToContent$ Height=� � WindowStyle$
 None=� � ShowInTaskbar .   � WindowStartupLocation$ CenterOwner=� � 
ResizeMode$ NoResize=�   CrystalChrome'  !System.Windows.Shell.WindowChrome   WindowChrome# �     CrystalWindows#���  $��1q�.���  � RowDefinitions �� $��27 ��� .+��� $��0q�$��Center=�$��Center=�  CrystalHeadings2#���    CrystalBackgroundFill2#���  ���� *Title+ �� ElementName$ inputDialog��� $��1��$��5q� �� $
��Auto ��� $
��Auto ��� $
��Auto �.+��� -   $��Instruction�� 
 Label2#���  $��Enter text below:���� -   $��	userInput��$��1��	 �� 	IsEnabled	 . �� 
 �� Orientation$
 
Horizontal=�$��0,7,0,0q�$��2��$��Right=�.+��� -   $	��_OK�� �� 	IsDefault .   CrystalDialogButton#���  �� -   $��_Cancel�� �� IsCancel . #���  