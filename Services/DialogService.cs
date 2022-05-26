using System.Windows;

namespace AccountingOfWorksInConstructionOrganization.Services
{
    interface IDialogService
    {
        void ShowInformation(string Error, string Caption);
        void ShowError(string Information, string Caption);
    }

    class DialogService : IDialogService
    {
        public void ShowError(string Error, string Caption = "Ошибка") =>
            MessageBox.Show(
                Error,
                Caption,
                MessageBoxButton.OK,
                MessageBoxImage.Error);

        public void ShowInformation(string Information, string Caption = "Информация") =>
            MessageBox.Show(
                Information,
                Caption,
                MessageBoxButton.OK,
                MessageBoxImage.Information);
    }
}