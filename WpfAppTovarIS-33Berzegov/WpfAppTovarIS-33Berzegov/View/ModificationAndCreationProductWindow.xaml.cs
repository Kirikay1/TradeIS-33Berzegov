using System;
using System.Collections.Generic;
using System.Data.Entity.Migrations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Navigation;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;
using WpfAppTovarIS_33Berzegov.Model.DataBase;
using System.Data.SqlClient;
using System.Data;

namespace WpfAppTovarIS_33Berzegov.View
{
    /// <summary>
    /// Логика взаимодействия для ModificationAndCreationProductWindow.xaml
    /// </summary>
    public partial class ModificationAndCreationProductWindow : Window
    {
        Product _product;
        public ModificationAndCreationProductWindow(Product product)
        {
            InitializeComponent();

            foreach (Window w in Application.Current.Windows)
                if (w is TovarApplicationWindow)
                    this.Owner = w as Window;
            if (product is null)
                _product = product = new Product();
            else
                _product = product;
            this.DataContext = _product;

            cmTovarName.ItemsSource = Model.DataBase.ConnectDB.db.TovarOfName.ToList();
        }

        private void SaveButtonClick_Click(object sender, RoutedEventArgs e)
        {
            TovarOfName tovar = new TovarOfName();

            var CurrentTovarName = cmTovarName.SelectedItem as TovarOfName;
            tovar.TovarNameID = CurrentTovarName.TovarNameID;

            using (var db = new TradeIS_33BerzegovEntities())
            {
                try
                {
                    db.Product.AddOrUpdate(_product);
                    db.SaveChanges();
                    (Owner as TovarApplicationWindow)?.RefreshData();
                    MessageBox.Show("Данные успешно сохранены", "", MessageBoxButton.OK, MessageBoxImage.Information);
                    Owner.Focus();
                    this.Close();
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message, "Ошибка", MessageBoxButton.OK, MessageBoxImage.Error);
                }
            }
        }
    }
}
