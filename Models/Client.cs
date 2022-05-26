using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AccountingOfWorksInConstructionOrganization.Models
{
    class Client
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string Phone { get; set; }
        public string Passport { get; set; }

        public List<Order> Orders { get; set; }
    }
}