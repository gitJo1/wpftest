   M S B A M L   `   `   `  ����B  >WpfTest, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:WpfTestWpfTest  5   	       WpfTest.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   'localclr-namespace:WpfTest     5   	   -   5          � Title$  
MainWindow��5   	   $	��500��6   $	��700��6)   .��5	      �  � ColumnDefinitions 5
   
   �� 5      $
��103* �6   �� 5      $	��70* �6   .+�5   
   �� -   5         ��Name$ comboBox��5      $
��Left=�6%   $��	10,10,0,0q�6@   $	��Top=�6S   $	��120��6k   �� 5   
   -   5         ��Name$ label��5      $��ID��6   $
��Left=�6,   $��	10,39,0,0q�6G   $	��Top=�6Z   �� 5   
   -   5        $ label1��5      $��名前��6    $
��Left=�6-   $��	10,67,0,0q�6H   $	��Top=�6[   �� 5   
   -   5        $ label2��5      $��住所��6    $
��Left=�6-   $��	10,95,0,0q�6H   $	��Top=�6[   �� 5   
   -   5         ��Name$ textBox��5      $
��Left=�6#   $��23��6>   $��	69,41,0,0q�6J    �� TextWrapping$
 Wrap=�6]   $	��Top=�6�   $	��120��6�   ��6q   �� *Id+6�   �� 5   
   -   5        $ textBox1��5      $
��Left=�6$   $��23��6?   $��	69,72,0,0q�6K   $
 Wrap=�6^   $	��Top=�6�   $	��120��6�   ��6r   �� *Name+6�   �� 5   
   -   5        $ textBox2��5      $
��Left=�6$   $��23��6?   $��
69,100,0,0q�6K   $
 Wrap=�6_   $	��Top=�6�   $	��120��6�   ��6s   �� *	Address+6�   &   System.Windows.Controls.DataGrid  5   
   -	   5          Name$ dataGrid��5      $
��Left=�6%   $��216,25,0,209q�6@   $	��267��6V   $��2��6b   ��6�   �� *DataContext+ �� Mode$ TwoWay=� �� RelativeSource �� *Self+	   Columns	 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn
   Header$
 INDEX��6?      MinWidth$ 50Q�6N   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6%   �� *Index+6N     5      $
 VALUE��6?   $	 150Q�6N    6%   �� *Value+6N   5      �� 5   
   -
   5         ��Name$ listView��5      $
��Left=�6%   $	��236��6@   $��97.916,25,0,0q�6M   $	��Top=�6d   $	��143��6|   $��1��6�    �� View 5      �� 5      .P�5      �� 5      5!      �� 5"   
   -   5        $ label3��5"      $��INDEX��6    $
��Left=�60   $��216,280,0,0q�6K   $	��Top=�6`   �� 5#   
   -   5        $ tbIndex��5#      $
��Left=�6#   $��23��6>   $��269,285,0,0q�6J   $
 Wrap=�6_   $	��Top=�6s   $	��120��6�   ��6�   �� *Index+�� 5$   
   -   5        $ label4��5$      $��VALUE��6    $
��Left=�60   $��394,280,0,0q�6K   $	��Top=�6`   $��2��6x   �� 5%   
   -   5        $ tbValue��5%      $
��Left=�6#   $��23��6>   $��35.916,285,0,0q�6J   $
 Wrap=�6b   $	��Top=�6�   $	��120��6�   $��1��6�   ��6v   �� *Value+6�   �� 5&   
   -   5         ��Name$ btnAdd��5&      $��追加��6!   $
��Left=�6.   $��165.916,282,0,0q�6I   $	��Top=�6b   $��75��6z   $��1��6�   6�   5(      5)      