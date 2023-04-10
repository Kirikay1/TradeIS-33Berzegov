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
using WpfAppTovarIS_33Berzegov.ViewModel;

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
            this.DataContext = new ProductVM();
        }

        private void AddButton_Click(object sender, RoutedEventArgs e)
        {
            var Creation = new ModificationAndCreationProductWindow(null);
            Creation.Show();
        }

        private void EditButton_Click(object sender, RoutedEventArgs e)
        {
            var Modification = new ModificationAndCreationProductWindow((DataContext as ProductVM).SelectedProduct);
            Modification.Show();
        }

        private void DeleteButton_Click(object sender, RoutedEventArgs e)
        {
            (DataContext as ProductVM).DeleteSelectedData();
        }

        internal void RefreshData()
        {
            (DataContext as ProductVM).LoadData();
        }
    }
}
