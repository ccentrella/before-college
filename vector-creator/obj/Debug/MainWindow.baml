   M S B A M L   `   `   `  ����J  FImage Creator, Version=1.7.126.0, Culture=neutral, PublicKeyToken=null-clr-namespace:Image_CreatorImage_Creator  5      ` \Autosoft_Controls_2017, Version=1.0.3020.0, Culture=neutral, PublicKeyToken=ed1e94b3b45ba86e_Dclr-namespace:Autosoft_Controls_2017;assembly=Autosoft_Controls_2017Autosoft_Controls_2017 5          Image_Creator.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      -localclr-namespace:Image_Creator     5      Z	AControlsDclr-namespace:Autosoft_Controls_2017;assembly=Autosoft_Controls_2017     5      -   5          � Title$  Image Creator��5       � Icon$ Image Creator Logo.jpg��5      $	��339��5      $	��598��5	       J� InputBindings 5      �� 5       �� Command$ IncreaseZoom��6   
 �� Key$ OemPlus��5       �� 	Modifiers$ Controlf�5      �� 5      $ DecreaseZoom��6   $ OemMinus��5      $ Controlf�5      �� 5         Image_Creator.MainWindow   	ResetZoom# Z 6   $ D0��5      $ Controlf�5       J� CommandBindings 5      )  #System.Windows.Input.CommandBinding  5      -   5           Command$
 Save��5      5        5      -   5        $
 Open��5      5        5      -   5        $ SaveAs��5      5         5!      -   5        	   SaveImageAs# Z	 5!      5#        5$      -   5        # Z 5&        5'      -   5        $ IncreaseZoom��5)        5*      -   5        $ DecreaseZoom��5,        5-      -	   5        $	 New��5-      5/        50      -
   5        $ Delete��50      52        53      -   5        
   ChangeBorderThickness# Z
 53      55      .��57      � -   5        $��mainGrid��57       � RowDefinitions 58      �� 59      $
��Auto �6   �� 5:      $
��Auto �6   �� 5;      �� 5<      $
��Auto �6   .+�5?      o� .@�5@      m� $��_File��6   .@�5A      m�  m� Command$
 Open��6   m� 5B      $	 New��6   m� 5C      $��_Save��6   $
 Save��5D   	   m� 5E      $ SaveAs��6   m� 5F      # Z	 6   �� 5G      m� 5H      -   5        $��E_xit��5H      5I   	   5J      m� 5K      $��_Edit��6   .@�5L      m� $
 Undo��6    m� CommandTarget 5M   	   ��  �� ElementName$
 data��m� 5N      $
 Redo��6    5O   	   �� $
 data���� 5P      m� 5Q      $
 Copy��6    5R   	   �� $
 data��m� 5S      $	 Cut��6    5T   	   �� $
 data��m� 5U      $ Paste��6    5V   	   �� $
 data��m� 5W      $ Delete��6    5X   	   �� $
 data��5Y      m� 5Z      $��_View��6   .@�5[      m� $ IncreaseZoom��6    m� InputGestureText$ Ctrl++��5\   	   m� 5]      $ DecreaseZoom��6   $ Ctrl--��5^   	   m� 5_      # Z 6   $ Ctrl+0��5`   	   5a      m� 5b      -   5        $��format��5b      $��_Format��5c      .@�5d      m�    ChangeBorderColor# Z 6   m� 5e         ChangeFillColor# Z 6   m� 5f      # Z
 6   5g      5h      � 5i      -   5        $��thicknessPopup��5i   
    � 	StaysOpen .   � PlacementTarget 5j      �� $ format��.��5l      �    PopupBackground#��[  6
   $	��100��5m       5n      �� 5o      $
��Auto �6   �� 5p      .+�5r      ��   Heading1#��[ 6   $
��25,7q�5s   	   $��Stroke Thickness��5t   	   *  $Autosoft_Controls_2017.NumericUpDown  5u      -   5        $��	thickness��5u      $��35��5v      $��1��5w         IncrementAmount$	 0.5Q�5x         NumberOfDecimalPlaces$ 2��5y         Value$ 10Q�5z      5{      5|      � 5}      -   5        $��
colorPopup��5}   
    .   5~      �� $ format��.��5�      � #��[  6
    5�      �� 5�      $
��Auto �6   �� 5�      .+�5�      �� #��[ 6   $
��25,7q�5�   	   $��Brushes��5�   	   �� 5�      $��1��6    �� TabStripPlacement$	 Top=�5�      .@�5�      �� $��Stroke��6    	 Tab17#��[ 5�   	   .��5�      �  � 	ItemWidth$ 30��6    � 
ItemHeight$ 30��5�      .+�5�   	   d� 
���  ��6   5�   	   5�      �� 5�      $
��Fill��6   #��[ 5�   	   5�      5�      5�      5�      �� 5�      -   5        $
��data��5�      
�������
�������$��1��5�       �� MaxLines$ 1��5�      �� 5�      $
��Auto=�6   $
��Auto=�5�      $��2��5�      .��5�      (� -   5        $��viewBox��5�      $
��Auto��5�      $
��Auto��5�      $��25q�5�      .��5�      F� -   5        $
��path��5�      
���   ���5�      �� $
 data�� �� Path$
 Text���5�      �� *Value+$ 	thickness��5�      5�      �� 5�      $8��2© 2017 Autosoft Corporation. All rights reserved.��6
   $��3��5�      $��Center=�5�      
�������5�      5�      5�      