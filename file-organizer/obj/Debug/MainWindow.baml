   M S B A M L   `   `   `  ����U  QAcademic Pro, Version=2.7.522.1, Culture=neutral, PublicKeyToken=5635407531d2c5a8+clr-namespace:Academic_ProAcademic_Pro  5          Academic_Pro.MainWindow   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      ,localclr-namespace:Academic_Pro     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      -   5          � Title$  Start - Academic Pro��5       � Icon$ Academic Pro Logo.png��5	      $	��500��5
      $	��800��5       � WindowStartupLocation$ CenterScreen=�5      $��1q�5         Crystal Windows#��[  5       � 	Resources 5       �� 
TargetType  ModernIconButton �� Property �� Value �� 
TargetType ��Name	 A�Name
 J� Opacity J� RenderTransformOrigin �� ScaleX �� ScaleY �� Triggers P� Property P� Value N� EnterActions g� Duration �� 
TargetName �� TargetProperty	 W� To N� ExitActions g� 	BeginTime��%  &	       �� 5      " ��6
   .�5      ��  � ��
 ���� 5      �� 5       � ��
 �����5      �� 5       � ��
 ���� 5      �� 5       � ��$ 50��5      �� 5       � ��$ 50��5      �� 5       � �� 5       �� 5!      " ��6   .R�5"      � $��MainGrid��6   .+�5#   	   �� #��z��6   #}�z}�5$   
   #��z��5%   
   #��z��5&   
   ._�5'   
   �� $ Content��5)      ��. #��z��5(      #��z��5*      #��z��5+      5,   
   A� 5-   	   $	 AnimationEllipse��6   $��Center=�5.      $��Center=�5/      #��z��50      #��z��51      
������$
 0Q�53      $ 0.5,0.5&�54      z�55   
   �� 56      $
 0.15Q�6   $
 0.15Q�57      59   
   5:   	    5<      P� 5?   	    � �� .  5A   
   �� 5B      .��5C      �� .��5D      W� $ 0D�6   $ AnimationEllipse��5E      $ Opacity�5F      $	 0.4X�5G      W� 5H      $ 0:0:0.25D�6   $ AnimationEllipse��5I      $ RenderTransform.ScaleX�5J      $	 1.4X�5K      W� 5L      $ 0:0:0.25D�6   $ AnimationEllipse��5M      $ RenderTransform.ScaleY�5N      $	 1.4X�5O      5Q      5R       5T   
   �� 5U      .��5V      �� .��5W      W� $ 0:0:0.25D�6   $ AnimationEllipse��5X      $ RenderTransform.ScaleX�5Y      $ 2X�5Z      W� 5[      $ 0:0:0.25D�6   $ AnimationEllipse��5\      $ RenderTransform.ScaleY�5]      $ 2X�5^      W� 5_      $ 0D�6   $ 0:0:0.25X�5`      $ AnimationEllipse��5a      $ Opacity�5b      $ 0X�5c      W� 5d      $ 0D�6   $ 0:0:0.25X�5e      $ AnimationEllipse��5f      $ RenderTransform.ScaleX�5g      $ 1X�5h      W� 5i      $ 0D�6   $ 0:0:0.25X�5j      $ AnimationEllipse��5k      $ RenderTransform.ScaleY�5l      $ 1X�5m      5n      5o      5q   
   P� 5t   	    �@J�IsMouseOver . . �5v   
   ��  � ��
 ����5w      5x   
   5z      5|      5}      5~       J� CommandBindings 5      )  #System.Windows.Input.CommandBinding  5�      -   5           Command$ Refresh��5�      5�       � TaskbarItemInfo 5�      *  $System.Windows.Shell.TaskbarItemInfo  5�         ProgressState$ Normal=�5�         ProgressValue 5�      �� *Value+ �� ElementName$ mainProgressBar��   Description 5�      �� *	ToolTip+$ mainProgressBar��.��5�      �  � RowDefinitions 5�      �� 5�      $��44 �6   �� 5�      �� 5�      $��24 �6   .+�5�      �   HeaderFooterBackground#��[ 6	     � ColumnDefinitions  5�      �� 5�      $
��Auto �6   �� 5�      �� 5�      $
��Auto �6   .+�5�      ��   CrystalHeadings#��[ 6   $��Academic Pro��5�      $��Center=�5�      �� 5�      -   5        ! ��Name$! avatar��5�      $��40��5�      $��40��5�      $��2��5�      $��Right=�5�      $��1q�5�      $!��Generic Avatar (Unisex).png��5�      " J� 	CacheMode" 5�      &   System.Windows.Media.BitmapCache  5�      #   RenderAtScale$# 2Q�6   $ J� Clip$ 5�      @� 5�      % @� RadiusX$% 20Q�6   & @� Center$& 20,20&�5�      ' @� RadiusY$' 20Q�5�      5�      �� 5�      -   5        ( ��Name$( 
mottoLabel��5�      $��1��5�      $��Student Motto��5�      $��Center=�5�      $��34��5�      $��16(�5�      $��Italic$�5�      5�      �� 5�      -   5        $��tabControl1��5�      $��1��5�      
���   �) �� TabStripPlacement$
) Left=�5�      .@�5�      �� $��Assignments��6   .��5�      �� $
��Auto=�6   $��Disabled=�5�   
   .��5�      �   5�      �� 5�   	   �� 5�   	   $	��150 �6   .+�5�      �� -   5        * ��Name$* courseOptions��5�      $��Assignments��5�      .��5�   	   �� -   5        + ��Name$+ items��5�      $��Stretch=�5�      , �� SelectionMode$, Extended=�5�      5�      5�   	   �� 5�      $��Options��6   $��1��5�      .��5�   	   �� $
��Auto=�6   .��5�   
   �� .+�5�      �� -   5        $
��_New��5�      5�      �� 5�      -	   5        $��_Search��5�      5�      �� 5�      -
   5        $��Open _Folder��5�      5�      �� 5�      -   5        $��	filePanel��5�      $��0��5�      .+�5�      �� -   5        $��_Open��5�      5�      �� 5�      -   5        $��_Rename��5�      5�      �� 5�      -   5        $��_Delete��5�      5�      �� 5�      -   5        $��Show in _Folder��5�      5�      5�      5�      5�   
   5�   	   5�      5�      5�      �� 5�      $��Account��6   .��5�      �� $
��Auto=�6   $
��Auto=�5�   
   .��5�      �  5�      �� 5�   	   $
��Auto �6   �� 5�   	   $
��Auto �6   �� 5�   	   $
��Auto �6   �� 5�   	   $
��Auto �6   �� 5�   	   $
��Auto �6   �� 5�   	   $
��Auto �6   �� 5�   	   $
��Auto �6   �� 5�   	   $
��Auto �6     5�      �� 5�   	   $
��Auto �6   �� 5�   	   .+�5�      �� $��First Name:��6   $��1q�5�      - � ToolTip$ - Enter your first name here��5�      �� 5�      -   5        . ��Name$. 	firstName��5�      $��50��5�   
   $��1��5�   
   5�   
   �� 5�      $��
Last Name:��6   $��1��5�      $��1q�5�      $- Enter your last name here��5�      �� 5      -   5        $. lastName��5      $��50��5  
   $��1��5  
   $��1��5  
   5  
   �� 5     $��Motto:��6   $��2��5     $��1q�5     $?- 9Place a quote here that will appear on the startup screen��5     �� 5	     -   5        $. motto��5	     $��50��5
  
   $��1��5  
   $��2��5  
   $6- 0Select a quote to be displayed near your picture��5  
   5  
   �� 5     $��Image:��6   $��3��5     $��1q�5     $h- bPlace an image here that represents you. If nothing is selected, a default image will be provided.��5     � 5     $��3��6   $��1��5  
     5  	   �� 5  
   �� 5  
   $��75 �6   .+�5  	   �� -   5        $. imageTextBox��5     $��50��5     5     �� 5  	   -   5        $��_Browse��5     $��1q�5  
   $��1��5  
   $��Normal"�5  
   5   
   5!  	   �� 5"     $��Source:��6   $��4��5#     $��1q�5$     $6- 0This represents the root directory for all files��5%     � 5&     $��4��6   $��1��5'  
     5(  	   �� 5)  
   �� 5*  
   $��75 �6   .+�5,  	   �� -   5        $. sourceTextBox��5,     $��50��5-     $��0��5.     5/     �� 50  	   -   5        $��_Browse��50     $��1��51  
   $��1q�52  
   $��Normal"�53  
   54  
   55  	   �� 56     $��Date of Birth:��6   $��5��57     $��1q�58     $0- *Place your date of birth here (MM/DD/YYYY)��59     (  "System.Windows.Controls.DatePicker  5:     -   5        /  Name$/ birthday��5:     $��50��5;  
   $��Stretch=�5<  
   $��1��5=  
   $��5��5>  
   0   DisplayDateStart$0 
1995-01-01X�5?  
   1   DisplayDate$1 
2000-01-01��5@  
   2   DisplayDateEnd$2 
2021-12-01X�5A  
   $- Select your date of birth��5B  
   5C  
   �� 5D     $��Start Date:��6   $��6��5E     $��1q�5F     $<- 6This indicates the school year start date (MM/DD/YYYY)��5G       5H     -   5        $/ 	startDate��5H     $��50��5I  
   $��Stretch=�5J  
   $��1��5K  
   $��6��5L  
   $0 
2016-11-01X�5M  
   $1 
2016-12-05��5N  
   $2 
2026-11-01X�5O  
   $- Select the start date��5P  
   5Q  
   �� 5R     $��	End Date:��6   $��7��5S     $��1q�5T     $G- AThis indicates the scheduled school year finish date (MM/DD/YYYY)��5U       5V     -   5        $/ endDate��5V     $��50��5W  
   $��Stretch=�5X  
   $��1��5Y  
   $��7��5Z  
   $0 
2016-05-15X�5[  
   $1 
2016-08-31��5\  
   $2 
2027-12-31X�5]  
   $- Select the finish date��5^  
   5_  
   5`     5a     5b     �� 5c     $
��Apps��6   .��5d     � $��	0,-20,0,0q�6    5e     �� 5f     $
��Auto �6   �� 5g     .+�5i     �� 3 �� Orientation$3 
Horizontal=�6   $��Right=�5j  	   .+�5l     �� -   5          CrystalIconButton#��[ 5l     $- Open App Location��5n  	   $��25��5o  	   $��25��5p  	   .��5q  	   �� $��Open.png��6   5r  	   �� 5s     #��[ 6   $��Refresh��5t  	   $- Reload��5u  	   $��25��5v  	   $��25��5w  	   .��5x  	   �� $��
Reload.png��6   5y  	   5z     �� 5{     $
��Auto=�6   $��1��5|     .��5}     � -   5        $��AppsPane��5}     4 � 
ItemHeight$	4 100��5~     5 � 	ItemWidth$	5 100��5     5�     5�     5�     5�     � 5�     $��2��6	   #��[ 5�       5�     �� 5�     $��57 �6   �� 5�     $
��Auto �6   �� 5�     �� 5�     $
��Auto �6   .+�5�     �� $��47��6   $��10,0,0,0q�5�     $'��!Autosoft 2017 Logo Blue Small.png��5�     $��22��5�     � 5�     -   5        6 �Name$6 SearchPopup��5�     $	��Top=�5�     $	��250��5�     $	��350��5�     $��Slide=�5�     .��5�     ��   CrystalBackgroundFill#��[ 6   $��2��5�     .+�5�     �   5�     �� 5�  	   �� 5�  	   $��20 �6   .+�5�     �� -   5        $( headerLabel��5�     $��Search��5�       CrystalHeadings2#��[ 5�     �� 5�     -   5        $��1��5�     $��12��5�  	   $��12��5�  	   #��[ 5�  	   $- Clear Search��5�  	   .��5�  	   (� .��5�  
   F� +����        ���� ��� �    ��� ����     	$��2��5�     $ 	0.25,0.25&�5�     ��5�     �� 7 �� RelativeSource7 �� *FindAncestor+8 �� AncestorType$8 ButtonL�9 �� Path$9 
Foreground�5�     5�  
   5�  	   5�     �� 5�     -   5        : ��Name$: course��5�     ; �� 
IsEditable; . < �� SelectedIndex$< 0��5�  
   = �� MaxDropDownHeight$	= 250��5�  
   .@�5�     �� $	��Any��6   5�     �� 5�     -    5        $
: week��5�     $	= 250��5�  
   $< 0��5�  
   .@�5�     �� $	��Any��6   �� 5�     $��Week 1��6   �� 5�     $��Week 2��6   �� 5�     $��Week 3��6   �� 5�     $��Week 4��6   �� 5�     $��Week 5��6   �� 5�     $��Week 6��6   �� 5�     $��Week 7��6   �� 5�     $��Week 8��6   �� 5�     $��Week 9��6   �� 5�     $��Week 10��6   �� 5�     $��Week 11��6   �� 5�     $��Week 12��6   �� 5�     $��Week 13��6   �� 5�     $��Week 14��6   �� 5�     $��Week 15��6   �� 5�     $��Week 16��6   �� 5�     $��Week 17��6   �� 5�     $��Week 18��6   �� 5�     $��Week 19��6   �� 5�     $��Week 20��6   �� 5�     $��Week 21��6   �� 5�     $��Week 22��6   �� 5�     $��Week 23��6   �� 5�     $��Week 24��6   �� 5�     $��Week 25��6   �� 5�     $��Week 26��6   �� 5�     $��Week 27��6   �� 5�     $��Week 28��6   �� 5�     $��Week 29��6   �� 5�     $��Week 30��6   �� 5�     $��Week 31��6   �� 5�     $��Week 32��6   �� 5�     $��Week 33��6   �� 5�     $��Week 34��6   �� 5�     $��Week 35��6   �� 5�     $��Week 36��6   5�     �� 5�     -!   5        $	: day��5�     $	= 250��5�  
   $< 0��5�  
   .@�5�     �� $	��Any��6   �� 5�     $��Day 1��6   �� 5�     $��Day 2��6   �� 5�     $��Day 3��6   �� 5�     $��Day 4��6   �� 5�     $��Day 5��6   5�     �� 5�     -"   5        $. 	searchBox��5�     �� 5�     -#   5        > ��Name$> searchButton��5�     $��_Search��5�     ? �� 	IsDefault? . $y�	Collapsed=�5�     5�     �� 5�     -$   5        $> createButton��5�     $��_Create File��5�     $y�	Collapsed=�5�     ? . 5�     5�     5�     �� 5�     $��Autosoft™��6   $��1��5�     $	��109��5�     � 5�     -%   5        @ �Name$@ mainProgressBar��5�     $	��0,2q�5�     A � Maximum$A 1Q�5�     $��2��5�     $$- Estimated Progress: Loading...��5�     �� 5�     -&   5        $��_Close��5�     $- Close this application��5�     $��3��5      $��Right=�5     $	��114��5     $
��10,1q�5     5     5     5     