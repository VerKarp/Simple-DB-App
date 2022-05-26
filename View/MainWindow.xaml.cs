using AccountingOfWorksInConstructionOrganization.ViewModels;
using System.Windows;

namespace AccountingOfWorksInConstructionOrganization.View
{
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();

            DataContext = new MainVM();
        }
    }
}