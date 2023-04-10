using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using WpfAppTovarIS_33Berzegov.Model;
using WpfAppTovarIS_33Berzegov.Model.DataBase;

namespace WpfAppTovarIS_33Berzegov.ViewModel
{
    public class ProductVM : BaseVM
    {
        private ObservableCollection<Product> _product;
        public ObservableCollection<Product> Product
        {
            get => _product;
            set
            {
                _product = value;
                OnPropertyChanged(nameof(Product));
            }
        }

        private Product _selectedProduct;
        public Product SelectedProduct
        {
            get => _selectedProduct;
            set
            {
                _selectedProduct = value;
                OnPropertyChanged(nameof(SelectedProduct));
            }
        }

        public ProductVM()
        {
            Product = new ObservableCollection<Product>();

            LoadData();
        }

        public void LoadData()
        {
            if (Product.Count > 0)
                Product.Clear();
            var res = Model.DataBase.ConnectDB.db.Product.ToList();
            res.ForEach(x => Product?.Add(x));
        }

        public void DeleteSelectedData()
        {

            if (!(SelectedProduct is null))
            {
                var res = MessageBox.Show("Вы уверены, что хотите удалить данный элемент?\nЭто действие невозможно отменить", "", MessageBoxButton.YesNo, MessageBoxImage.Question);
                if (res == MessageBoxResult.Yes)
                {
                    using (var db = new TradeIS_33BerzegovEntities())
                    {
                        try
                        {
                            var forDelete = db.Product.Where(x => x.ProductArticleNumber == SelectedProduct.ProductArticleNumber).FirstOrDefault();
                            db.SaveChanges();
                            LoadData();
                            MessageBox.Show("Данные успешно удалены", "", MessageBoxButton.OK, MessageBoxImage.Information);
                        }
                        catch (Exception ex)
                        {
                            MessageBox.Show(ex.Message, "Ошибка", MessageBoxButton.OK, MessageBoxImage.Error);
                        }
                    }
                }
            }
        }

        private string _productArticleNumber;
        public string ProductArticleNumber
        {
            get => _productArticleNumber;
            set
            {
                _productArticleNumber = value;
                OnPropertyChanged(nameof(ProductArticleNumber));
            }
        }

        private int _productMeasurementUnit;
        public int ProductMeasurementUnit
        {
            get => _productMeasurementUnit;
            set
            {
                _productMeasurementUnit = value;
                OnPropertyChanged(nameof(ProductMeasurementUnit));
            }
        }
        private decimal _productCost;
        public decimal ProductCost
        {
            get => _productCost;
            set
            {
                _productCost = value;
                OnPropertyChanged(nameof(ProductCost));
            }
        }

        private int _productMaximumDiscountAmount;
        public int ProductMaximumDiscountAmount
        {
            get => _productMaximumDiscountAmount;
            set
            {
                _productMaximumDiscountAmount = value;
                OnPropertyChanged(nameof(ProductMaximumDiscountAmount));
            }
        }

        private int _productCategory;
        public int ProductCategory
        {
            get => _productCategory;
            set
            {
                _productCategory = value;
                OnPropertyChanged(nameof(ProductCategory));
            }
        }
        private int _productDiscountAmount;
        public int ProductDiscountAmount
        {
            get => _productDiscountAmount;
            set
            {
                _productDiscountAmount = value;
                OnPropertyChanged(nameof(ProductDiscountAmount));
            }
        }
        private int _productQuantityInStock;
        public int ProductQuantityInStock
        {
            get => _productQuantityInStock;
            set
            {
                _productQuantityInStock = value;
                OnPropertyChanged(nameof(ProductQuantityInStock));
            }
        }
        private byte[] _productPhoto;
        public byte[] ProductPhoto
        {
            get => _productPhoto;
            set
            {
                _productPhoto = value;
                OnPropertyChanged(nameof(ProductPhoto));
            }
        }
    }
}
