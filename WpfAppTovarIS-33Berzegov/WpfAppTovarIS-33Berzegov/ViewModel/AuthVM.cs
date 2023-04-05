using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using WpfAppTovarIS_33Berzegov.Model;
using WpfAppTovarIS_33Berzegov.Model.DataBase;
using WpfAppTovarIS_33Berzegov.View;

namespace WpfAppTovarIS_33Berzegov.ViewModel
{
    public class AuthVM : BaseVM
    {
        private string _password;
        private string _login;
        private User _user;

        public string Password
        {
            get => _password;
            set
            {
                _password = value;
                OnPropertyChanged(nameof(Password));
            }
        }
        public string Login
        {
            get => _login;
            set
            {
                _login = value;
                OnPropertyChanged(nameof(Login));
            }
        }
        public User User
        {
            get => _user;
            set
            {
                _user = value;
                OnPropertyChanged(nameof(User));
            }
        }

        private async Task<bool> Validation(string login, string password)
        {
            try
            {
                var result = await ConnectDB.db.User.FirstOrDefaultAsync(u => u.UserLogin == login && u.UserPassword == password);

                _user = result;

                if (result != null)
                    return true;
                else
                    return false;
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Необработанное исключение",
                        MessageBoxButton.OK, MessageBoxImage.Stop);

                return false;
            }
        }

        public async void Auntification()
        {
            if (await Validation(Login, Password))
            {
                MessageBox.Show("Вы успешно авторизировались", "Авторизация", MessageBoxButton.OK, MessageBoxImage.Information);
                TovarApplicationWindow window = new TovarApplicationWindow();
                window.Show();
                foreach (var item in App.Current.Windows)
                {
                    if (item is MainWindow)
                    {
                        (item as MainWindow).Hide();
                    }
                }
                return;
            }
            else
                MessageBox.Show("Неверный логин или пароль", "Ошибка..", MessageBoxButton.OK, MessageBoxImage.Stop);
        }
    }
}
