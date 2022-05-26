using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AccountingOfWorksInConstructionOrganization.Models
{
    class Order
    {
        public int Id { get; set; }
        public int ClientId { get; set; }
        public int ServiceId { get; set; }
        public DateTime Date { get; set; }
        public string Status { get; set; }

        public Client Client { get; set; }
        public Service Service { get; set; }
    }
}