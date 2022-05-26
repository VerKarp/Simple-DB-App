using AccountingOfWorksInConstructionOrganization.Commands;
using AccountingOfWorksInConstructionOrganization.Data;
using AccountingOfWorksInConstructionOrganization.Models;
using AccountingOfWorksInConstructionOrganization.Services;
using AccountingOfWorksInConstructionOrganization.ViewModels.Base;
using System.Collections.ObjectModel;
using System.Linq;

namespace AccountingOfWorksInConstructionOrganization.ViewModels
{
    class MainVM : ViewModel
    {
        private DialogService _dialog = new();

        #region FIND PROPERTIES

        private string _findClient;
        public string FindClient
        {
            get => _findClient;
            set
            {
                _findClient = value;
                OnPropertyChanged();

                if (_findClient == "")
                    AllClients = new(Repository.Select<Client>());

                else
                    AllClients = new(AllClients.Where(c => c.Name.StartsWith(_findClient)));
            }
        }

        private string _findEmployee;
        public string FindEmployee
        {
            get => _findEmployee;
            set
            {
                _findEmployee = value;
                OnPropertyChanged();

                if (_findEmployee == "")
                    AllEmployees = new(Repository.Select<Employee>());

                else
                    AllEmployees = new(AllEmployees.Where(c => c.Name.StartsWith(_findEmployee)));
            }
        }

        private string _findService;
        public string FindService
        {
            get => _findService;
            set
            {
                _findService = value;
                OnPropertyChanged();

                if (_findService == "")
                    AllServices = new(Repository.Select<Service>());

                else
                    AllServices = new(AllServices.Where(c => c.Name.StartsWith(_findService)));
            }
        }

        #endregion

        #region GET ALL

        private ObservableCollection<Order> _allOrders = new(Repository.Select<Order>());
        public ObservableCollection<Order> AllOrders
        {
            get => _allOrders;
            set
            {
                _allOrders = value;
                OnPropertyChanged();
            }
        }

        private ObservableCollection<Client> _allClients = new(Repository.Select<Client>());
        public ObservableCollection<Client> AllClients
        {
            get => _allClients;
            set
            {
                _allClients = value;
                OnPropertyChanged();
            }
        }

        private ObservableCollection<Employee> _allEmployees = new(Repository.Select<Employee>());
        public ObservableCollection<Employee> AllEmployees
        {
            get => _allEmployees;
            set
            {
                _allEmployees = value;
                OnPropertyChanged();
            }
        }

        private ObservableCollection<Service> _allServices = new(Repository.Select<Service>());
        public ObservableCollection<Service> AllServices
        {
            get => _allServices;
            set
            {
                _allServices = value;
                OnPropertyChanged();
            }
        }

        #endregion

        #region PROPERTIES

        private Order _order = new();
        public Order Order
        {
            get => _order;
            set
            {
                _order = value;
                OnPropertyChanged();
            }
        }

        private Client _client = new();
        public Client Client
        {
            get => _client;
            set
            {
                _client = value;
                OnPropertyChanged();
            }
        }

        private Employee _employee = new();
        public Employee Employee
        {
            get => _employee;
            set
            {
                _employee = value;
                OnPropertyChanged();
            }
        }

        private Service _service = new();
        public Service Service
        {
            get => _service;
            set
            {
                _service = value;
                OnPropertyChanged();
            }
        }

        private Order _selectedOrder = new();
        public Order SelectedOrder
        {
            get => _selectedOrder;
            set
            {
                _selectedOrder = value;
                OnPropertyChanged();
            }
        }

        private Client _selectedClient = new();
        public Client SelectedClient
        {
            get => _selectedClient;
            set
            {
                _selectedClient = value;
                OnPropertyChanged();
            }
        }

        private Employee _selectedEmployee = new();
        public Employee SelectedEmployee
        {
            get => _selectedEmployee;
            set
            {
                _selectedEmployee = value;
                OnPropertyChanged();
            }
        }

        private Service _selectedService = new();
        public Service SelectedService
        {
            get => _selectedService;
            set
            {
                _selectedService = value;
                OnPropertyChanged();
            }
        }

        #endregion

        #region ADD COMMAND

        private readonly LambdaCommand _addNewOrder;
        public LambdaCommand AddNewOrder
        {
            get
            {
                return _addNewOrder ?? new LambdaCommand(obj =>
                {
                    if (Order.ClientId == 0 || Order.Date == default || Order.ServiceId == 0 || Order.Status == null)
                    {
                        _dialog.ShowError("Некорректные данные!");
                        return;
                    }

                    Repository.Insert(Order);
                    AllOrders.Add(Order);
                    Order = new();
                }
                );
            }
        }

        private readonly LambdaCommand _addNewEmployee;
        public LambdaCommand AddNewEmployee
        {
            get
            {
                return _addNewEmployee ?? new LambdaCommand(obj =>
                {
                    if (Employee.Address == null || Employee.DateOfBirth == default || Employee.Name == null
                    || Employee.Passport == null || Employee.Phone == null)
                    {
                        _dialog.ShowError("Некорректные данные!");
                        return;
                    }

                    FindEmployee = "";
                    Repository.Insert(Employee);
                    AllEmployees.Add(Employee);
                    Employee = new();
                }
                );
            }
        }

        private readonly LambdaCommand _addNewClient;
        public LambdaCommand AddNewClient
        {
            get
            {
                return _addNewClient ?? new LambdaCommand(obj =>
                {
                    if (Client.Phone == null || Client.Passport == null || Client.Name == null)
                    {
                        _dialog.ShowError("Некорректные данные!");
                        return;
                    }

                    FindClient = "";
                    Repository.Insert(Client);
                    AllClients.Add(Client);
                    Client = new();
                }
                );
            }
        }

        private readonly LambdaCommand _addNewService;
        public LambdaCommand AddNewService
        {
            get
            {
                return _addNewService ?? new LambdaCommand(obj =>
                {
                    if (Service.Name == null || Service.Price < 1)
                    {
                        _dialog.ShowError("Некорректные данные!");
                        return;
                    }

                    FindService = "";
                    Repository.Insert(Service);
                    AllServices.Add(Service);
                    Service = new();
                }
                );
            }
        }

        #endregion

        #region DELETE COMMAND

        private readonly LambdaCommand _deleteOrder;
        public LambdaCommand DeleteOrder
        {
            get
            {
                return _deleteOrder ?? new LambdaCommand(obj =>
                {
                    Repository.Delete(SelectedOrder);
                    AllOrders.Remove(SelectedOrder);
                }
                );
            }
        }

        private readonly LambdaCommand _deleteClient;
        public LambdaCommand DeleteClient
        {
            get
            {
                return _deleteClient ?? new LambdaCommand(obj =>
                {
                    Repository.Delete(SelectedClient);
                    AllClients.Remove(SelectedClient);

                    ObservableCollection<Order> delOrder = new(AllOrders.Where(o => o.Client == SelectedClient));

                    foreach (Order order in delOrder)
                    {
                        AllOrders.Remove(order);
                    }
                }
                );
            }
        }

        private readonly LambdaCommand _deleteEmployee;
        public LambdaCommand DeleteEmployee
        {
            get
            {
                return _deleteEmployee ?? new LambdaCommand(obj =>
                {
                    Repository.Delete(SelectedEmployee);
                    AllEmployees.Remove(SelectedEmployee);
                }
                );
            }
        }

        private readonly LambdaCommand _deleteService;
        public LambdaCommand DeleteService
        {
            get
            {
                return _deleteService ?? new LambdaCommand(obj =>
                {
                    Repository.Delete(SelectedService);
                    AllServices.Remove(SelectedService);

                    ObservableCollection<Order> delOrder = new(AllOrders.Where(o => o.Service == SelectedService));

                    foreach (Order order in delOrder)
                    {
                        AllOrders.Remove(order);
                    }
                }
                );
            }
        }

        #endregion

        #region ORDERS BY STATUS COMMAND

        private readonly LambdaCommand _showClosedOrders;
        public LambdaCommand ShowClosedOrders
        {
            get
            {
                return _showClosedOrders ?? new LambdaCommand(obj =>
                {
                    AllOrders = Repository.GetOrdersByStatus("Закрытый");
                }
                );
            }
        }

        private readonly LambdaCommand _showNotClosedOrders;
        public LambdaCommand ShowNotClosedOrders
        {
            get
            {
                return _showNotClosedOrders ?? new LambdaCommand(obj =>
                {
                    AllOrders = Repository.GetOrdersByStatus("Незакрытый");
                }
                );
            }
        }

        private readonly LambdaCommand _showAllOrders;
        public LambdaCommand ShowAllOrders
        {
            get
            {
                return _showAllOrders ?? new LambdaCommand(obj =>
                {
                    AllOrders = new(Repository.Select<Order>());
                }
                );
            }
        }

        #endregion
    }
}