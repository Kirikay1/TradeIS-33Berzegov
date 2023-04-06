﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using WpfAppTovarIS_33Berzegov.Model;
using WpfAppTovarIS_33Berzegov.ViewModel;

namespace WpfAppTovarIS_33Berzegov
{
    /// <summary>
    /// Логика взаимодействия для MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
            this.DataContext = new AuthVM();
        }

        private void EnterButton_Click(object sender, RoutedEventArgs e)
        {
                (DataContext as AuthVM).Password = TxbPassword.Password;
                (DataContext as AuthVM).Auntification();
        }
    }
}
