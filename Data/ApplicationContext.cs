using AccountingOfWorksInConstructionOrganization.Models;
using Microsoft.EntityFrameworkCore;
using System;

namespace AccountingOfWorksInConstructionOrganization.Data
{
    class ApplicationContext : DbContext
    {
        public ApplicationContext()
        {
            Database.EnsureCreated();
        }

        public DbSet<Order> Orders { get; set; }
        public DbSet<Client> Clients { get; set; }
        public DbSet<Employee> Employees { get; set; }
        public DbSet<Service> Services { get; set; }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            optionsBuilder.UseMySql("server=localhost;user=root;password=Vrbee47;database=ConstructionOrganization;",
                new MySqlServerVersion(new Version(8, 0, 29))
            );
        }
    }
}