using AccountingOfWorksInConstructionOrganization.Models;
using Microsoft.EntityFrameworkCore;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;

namespace AccountingOfWorksInConstructionOrganization.Data
{
    class Repository
    {
        public static IQueryable<TEntity> Select<TEntity>() where TEntity : class
        {
            ApplicationContext db = new();

            return db.Set<TEntity>();
        }

        public static void Insert<TEntity>(TEntity entity) where TEntity : class
        {
            using (ApplicationContext db = new())
            {
                db.Entry(entity).State = EntityState.Added;
                db.SaveChanges();
            }
        }

        public static void Delete<TEntity>(TEntity entity) where TEntity : class
        {
            using (ApplicationContext db = new())
            {
                db.Entry(entity).State = EntityState.Deleted;
                db.SaveChanges();
            }
        }

        public static ObservableCollection<Order> GetOrdersByStatus(string status)
        {
            ObservableCollection<Order> orders;

            using (ApplicationContext db = new())
            {
                orders = new(db.Orders.Where(o => o.Status == status));
            }

            return orders;
        }

        public static ObservableCollection<Client> FindClients(StringBuilder name)
        {
            ObservableCollection<Client> clients;

            using (ApplicationContext db = new())
            {
                clients = new(db.Clients.Where(c => c.Name.StartsWith(name.ToString())));
            }

            return clients;
        }
    }
}