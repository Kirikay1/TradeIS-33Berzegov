using System;
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
using System.Windows.Shapes;

namespace WpfAppTovarIS_33Berzegov.View
{
    /// <summary>
    /// Логика взаимодействия для TovarApplicationWindow.xaml
    /// </summary>
    public partial class TovarApplicationWindow : Window
    {
        public TovarApplicationWindow()
        {
            InitializeComponent();
        }
        private void Window_Closed(object sender, EventArgs e)
        {
            foreach (Window window in App.Current.Windows)
                window.Close();
        }

        private void AddButton_Click(object sender, RoutedEventArgs e)
        {

        }

        private void EditButton_Click(object sender, RoutedEventArgs e)
        {

        }

        private void DeleteButton_Click(object sender, RoutedEventArgs e)
        {

        }
    }
}
