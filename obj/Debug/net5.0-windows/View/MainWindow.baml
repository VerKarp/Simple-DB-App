   M S B A M L   `   `   `  ����f  bAccountingOfWorksInConstructionOrganization, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullDclr-namespace:AccountingOfWorksInConstructionOrganization.ViewModels6AccountingOfWorksInConstructionOrganization.ViewModels  5   	   A    ;AccountingOfWorksInConstructionOrganization.View.MainWindow   5   	   W SPresentationCore, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   [
viewmodelsDclr-namespace:AccountingOfWorksInConstructionOrganization.ViewModels     5   	     � Title$  
MainWindow��5	   	   $	��600��6   $
��1100��6,    � WindowStartupLocation$ CenterScreen=�5
   	   ���#292B2C � 	Resources 5       �� 
TargetType �� Property �� Value(  "System.Windows.Controls.DatePicker&   System.Windows.Controls.DataGrid �� 
TargetType ��Name �� Triggers	 P� Property
 P� Value �� 
TargetName   HeaderTemplate �� TextAlignment=  7System.Windows.Controls.Primitives.DataGridColumnHeader*  $System.Windows.Controls.DataGridCell��%�
  '��       '  �     '�� V    '�� �    '�� �    '  o    'o� �    'm�     '�� �    &	  �    '  6    7   '  �    '�� �	    �� 5   
   " ��6   .�5      ��  � ��$ Verdana)�6+   �� 5       � ��$ 14(�6)   �� 5       � ��$ 30 10q�6'   �� 5       � ��
 �����6+   5      �� 5   
   "  6   .�5      ��  � ��$ Verdana)�6+   �� 5       � ��$ 14(�6)   �� 5       � ��$ 30 10q�6'   5      �� 5   
   " ��6   .�5      ��  � ��$ Verdana)�6+   �� 5       � ��$ 14(�6)   �� 5       � ��$ 30 10q�6'   5      �� 5!   
   " ��6   .�5"      ��  � ��$ Verdana)�6+   �� 5#       � ��$ 14(�6)   �� 5$       � ��$ 30 10q�6'   5%      �� 5'   
   " ��6   .�5(      ��  � ��$ 16(�6)   �� 5)       � ��$ SFNS Display)�6+   �� 5*       � ��
 �����6+   �� 5+       � �� �#3235376,   �� 5,       � ��$ 2q�60   5-      �� 5/   
   "  6   .�50      ��  � �� �#292B2C6+   51      �� 53   
   " o�6   .�54      ��  � �� �#292B2C6+   55      �� 57   
   " m�6   .�58      ��  � ��$ 16(�6)   �� 59       � ��$
 10 6q�6'   �� 5:       � ��
 �����6+   5;      �� 5=   
   " ��6   .�5>      ��  � ��
 �����6+   �� 5?       � �� 5@      �� 5A      " ��6&   .R�5B      � $��Panel��6   .+�5C      �� $ ContentSite��6/   $��Center=�5D   %   $��Center=�5E   %   $��Header��5F   %   $
��10,2q�5G   %   5H       5J      P� 5K      	 �@��
IsSelected$

 True��6<   . �5L   "   �� $ Panel��6)    � ��
 �����6R   5M      P� 5N      	 �@��
IsSelected$
 False��6<   . �5O   "   �� $ Panel��6)    � �� �#292B2C6R   5P      5R      5T      5U      �� 5W   
   .R�5X      �� $
��Wrap=�6)   $ Center=�6>   ��6   �� 6>   5Y      �� 5Z   
   "  6   .�5[      ��  � ��
 �   �6,   �� 5\       � ��$	 0.5q�60   �� 5]       � ��
 �����6+   �� 5^       � ��$ Center=�6;   �� 5_       � ��$ 2q�6(   �� 5`       � ��8   60   �� 5a       � ��$ 16(�6)   �� 5b       � ��$ Verdana)�6+   �� 5c       �@�Cursor$
 Hand��6'   5d      �� 5f   
   "  6   .�5g      ��  � ��$ 12q�6(   �� 5h       � ��$	 0.1q�60   �� 5i       � ��
 �����6,   �� 5j       � ��$	 0.1q�60   �� 5k       � ��$ Verdana)�6+   �� 5l       � ��$ 16(�6)   �� 5m       � ��$ Stretch=�64   5n      �� 5p   
   " ��6   .�5q      ��  � �� �#292B2C6+   5r      5s      .��5u      � .+�5v   
   ��  �� TabStripPlacement$
 Left=�6   .@�5w      �� ��5x      �� 5y      $��Заказы��6    .��5|      �� $ Bottom=�6   .@�5}      �� ��5~      �� 5      $��Таблица��6(    � ContextMenu 5�      �� 5�      .@�5�   "   m� $��Удалить��6+    m� Command 6<   �� *DeleteOrder+5�      .��5�      �  � RowDefinitions 5�      �� 5�   "   $��1* �60   �� 5�   "   $	��11* �60   .+�5�      o� $��14(�6#   .@�5�   "   m� $��Все заказы��6+    6?   �� *ShowAllOrders+m� 5�   "   $#��Закрытые заказы��6+    6D   �� *ShowClosedOrders+m� 5�   "   $'��!Незакрытые заказы��6+    6F   �� *ShowNotClosedOrders+5�        5�         AutoGenerateColumns$ False��5�   #      CanUserAddRows$ False��5�   #      CanUserDeleteRows$ False��5�   #      
IsReadOnly$
 True��5�   #   $��1��5�   #   ��5�   '   �� *	AllOrders+ �� UpdateSourceTrigger$ PropertyChanged=� �� SelectedItem 5�   #   �� *SelectedOrder+   Columns 5�   "   0  *System.Windows.Controls.DataGridTextColumn  5�   &   ,  &System.Windows.Controls.DataGridColumn   Header$ ID��69      Width5  /System.Windows.Controls.DataGridLengthConverter$ 1* 6\   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6E   �� *Id+6\     5�   &   $ Номер клиента��69   $ 1* 6m    6P   �� *
ClientId+6m     5�   &   $ Номер услуги��69   $ 1* 6m    6O   �� *	ServiceId+6m     5�   &   $ Дата��69   $ 2* 6q    6G   �� *Date+ �� StringFormat$ d��6q     5�   &   $ Статус��69   $ 2* 6d    6I   �� *Status+6d   5�      5�      5�      �� 5�      ��5�      �� 5�      $��Добавление��6(   .��5�      �� .+�5�      ��  �� Orientation$ 
Horizontal=�6)   $��Center=�6B   .+�5�   "   �� $ Vertical=�6-   $��20 10q�6D   .+�5�   &   �� $!��Номер клиента: ��60   �� 5�   &    �� SelectedValuePath$ Id��5�   +    �� DisplayMemberPath$ Id��5�   +    �� 
IsEditable$
 True��5�   +   ��5�   /   �� *
AllClients+  �� SelectedValue  5�   +   �� *Order.ClientId+5�   +   5�   #   �� 5�   "   $ Vertical=�6-   $��20 10q�6D   .+�5�   &   �� $��Номер услуги: ��60   �� 5�   &   $ Id��5�   +   $ Id��5�   +   $
 True��5�   +   ��5�   /   �� *AllServices+  5�   +   �� *Order.ServiceId+5�   +   5�   #   �� 5�   "   $ Vertical=�6-   $��20 10q�6D   .+�5�   &   �� $��
Дата: ��60     5�   &   !   IsTodayHighlighted$
! True��5�   )   "   SelectedDate" 5�   1   �� *
Order.Date+5�   )   5�   #   �� 5�   "   $ Vertical=�6-   $��20 10q�6D   .+�5�   &   �� $��Статус: ��60   �� 5�   &   $	��130��6/   $ Content��5�   %     5�   %   �� *Order.Status+.@�5�   *   �� $��Закрытый��67   �� 5�   *   $��Незакрытый��67   5�   '   5�   #   5�      �� 5�      $��Добавить��6%   $��60��68   $��30q�5�   )   ��5�   D   �� *AddNewOrder+5�   )   5�      5�      5�      5�      �� 5�      ��5�      �� 5�      $��Клиенты��6    .��5�      �� $ Bottom=�6   .@�5�      �� ��5�      �� 5�      $��Таблица��6(    5�      �� 5�      .@�5�   "   m� $��Удалить��6+    6<   �� *DeleteClient+5�      .��5�      �  5�      �� 5�   "   $��1* �60   �� 5�   "   $	��11* �60   .+�5�      �� $ 
Horizontal=�6)   .+�5�   "   �� $-��'Поиск клиента по ФИО: ��6,   $��Center=�6J   $��
30 10 0 10q�6e   �� 5�   "   $��Center=�6*   $	��400��6E   $��10 10q�6T   ��5�   !   �� *
FindClient+$ PropertyChanged=�# �� Mode$# TwoWay=�5�        5�      $ False��5�   #   $ False��5�   #   $ False��5�   #   $
 True��5�   #   $��1��5�   #   ��5�   '   �� *
AllClients+$ PropertyChanged=� 5�   #   �� *SelectedClient+ 5�   "     5�   &   $ ID��69   $ 1* 6\    6E   �� *Id+6\     5�   &   $ ФИО��69   $ 3* 6_    6F   �� *Name+6_     5�   &   $! Номер телефона��69   $ 2* 6k    6Q   �� *Phone+6k     5�   &   $ Паспорт��69   $ 2* 6g    6J   �� *
Passport+6g   5     5     5     �� 5     ��5     �� 5     $��Добавление��6(   .��5
     �� .+�5     �� $ Vertical=�6)   $��
60 10 60 0q�6@   .+�5  "   �� $��ФИО: ��6,   �� 5  "   ��6*   �� *Client.Name+5     �� 5     $ 
Horizontal=�6)   $��Center=�6B   .+�5  "   �� $ Vertical=�6-   $��10q�6D   .+�5  &   �� $#��Номер телефона: ��60   �� 5  &   $	��130��6L   ��6.   �� *Client.Phone+6L   5  #   �� 5  "   $ Vertical=�6-   $��10q�6D   .+�5  &   �� $��Паспорт: ��60   �� 5  &   $	��130��6O   ��6.   �� *Client.Passport+6O   5  #   5     �� 5     $��Добавить��6%   $��60��68   $��30q�5  )   ��5  D   �� *AddNewClient+5  )   5     5     5      5!     �� 5#     ��5$     �� 5%     $��Сотрудники��6    .��5(     �� $ Bottom=�6   .@�5)     �� ��5*     �� 5+     $��Таблица��6(    5.     �� 5/     .@�50  "   m� $��Удалить��6+    6<   �� *DeleteEmployee+51     .��54     �  55     �� 56  "   $��1* �60   �� 57  "   $	��11* �60   .+�5:     �� $ 
Horizontal=�6)   .+�5;  "   �� $3��-Поиск сотрудника по ФИО: ��6,   $��Center=�6M   $��
30 10 0 10q�6h   �� 5<  "   $��Center=�6*   $	��400��6E   $��10 10q�6T   ��5=  !   �� *FindEmployee+$ PropertyChanged=�$# TwoWay=�5>       5@     $ False��5A  #   $ False��5B  #   $ False��5C  #   $
 True��5D  #   $��1��5F  #   ��5@  '   �� *AllEmployees+$ PropertyChanged=� 5E  #   �� *SelectedEmployee+ 5G  "     5H  &   $ ID��69   $ 1* 6\    6E   �� *Id+6\     5I  &   $ ФИО��69   $ 2* 6_    6F   �� *Name+6_     5J  &   $! Номер телефона��69   $ 2* 6k    6Q   �� *Phone+6k     5K  &   $ Паспорт��69   $ 2* 6g    6J   �� *
Passport+6g     5L  &   $ День рождения��69   $ 2* 6�    6P   �� *DateOfBirth+$ d��6�     5M  &   $ 
Адрес��69   $ 2* 6d    6H   �� *	Address+6d   5O     5P     5Q     �� 5S     ��5T     �� 5U     $��Добавление��6(   .��5X     �� .+�5Y     �� $ Vertical=�6)   $��60 10 60 10q�6@   .+�5Z  "   �� $��ФИО: ��6,   �� 5[  "   ��6*   �� *Employee.Name+5\     �� 5^     $ 
Horizontal=�6)   $��Center=�6B   .+�5_  "   �� $ Vertical=�6-   $��10q�6D   .+�5`  &   �� $#��Номер телефона: ��60   �� 5a  &   $	��130��6N   ��6.   �� *Employee.Phone+6N   5b  #   �� 5d  "   $ Vertical=�6-   $��10q�6D   .+�5e  &   �� $��Паспорт: ��60   �� 5f  &   $	��130��6Q   ��6.   �� *Employee.Passport+6Q   5g  #   �� 5i  "   $ Vertical=�6-   $��20 10q�6D   .+�5j  &   �� $!��День рождения: ��60     5k  &   $! False��5l  )   $��Center=�5m  )   " 5k  1   �� *Employee.DateOfBirth+5m  )   5n  #   5o     �� 5q     $ Vertical=�6)   $��
60 10 60 0q�6@   .+�5r  "   �� $��Адрес: ��6,   �� 5s  "   ��6*   �� *Employee.Address+5t     �� 5v     $��Добавить��6%   $��60��68   $��30q�5w  )   ��5v  D   �� *AddNewEmployee+5w  )   5x     5y     5z     5{     �� 5}     ��5~     �� 5     $��Услуги��6    .��5�     �� $ Bottom=�6   .@�5�     �� ��5�     �� 5�     $��Таблица��6(    5�     �� 5�     .@�5�  "   m� $��Удалить��6+    6<   �� *DeleteService+5�     .��5�     �  5�     �� 5�  "   $��1* �60   �� 5�  "   $	��11* �60   .+�5�     �� $ 
Horizontal=�6)   .+�5�  "   �� $5��/Поиск услуги по названию: ��6,   $��Center=�6N   $��
30 10 0 10q�6i   �� 5�  "   $��Center=�6*   $	��400��6E   $��10 10q�6T   ��5�  !   �� *FindService+$ PropertyChanged=�$# TwoWay=�5�       5�     $ False��5�  #   $ False��5�  #   $ False��5�  #   $
 True��5�  #   $��1��5�  #   ��5�  '   �� *AllServices+$ PropertyChanged=� 5�  #   �� *SelectedService+ 5�  "     5�  &   $ ID��69   $ 1* 6\    6E   �� *Id+6\     5�  &   $ Название��69   $ 3* 6d    6K   �� *Name+6d     5�  &   $ Цена��69   $ 2* 6a    6G   �� *Price+6a   5�     5�     5�     �� 5�     ��5�     �� 5�     $��Добавление��6(   .��5�     �� .+�5�     �� $ 
Horizontal=�6)   $��Center=�6B   .+�5�  "   �� $ Vertical=�6-   $��10q�6D   .+�5�  &   �� $��Название: ��60   �� 5�  &   $	��330��6L   ��6.   �� *Service.Name+6L   5�  #   �� 5�  "   $ Vertical=�6-   $��10q�6D   .+�5�  &   �� $��
Цена: ��60   �� 5�  &   $	��110��6M   ��6.   �� *Service.Price+6M   5�  #   5�     �� 5�     $��Добавить��6%   $��60��68   $��30q�5�  )   ��5�  D   �� *AddNewService+5�  )   5�     5�     5�     5�     5�     5�     5�     