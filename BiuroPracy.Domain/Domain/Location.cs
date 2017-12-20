using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BiuroPracy.Domain
{
   public  class Location
    {
        public virtual int Id { get; set; }
        public virtual string Street { get; set; }
        public virtual string PostalCode { get; set; }

        public virtual Country Country { get; set; }
        public virtual City City { get; set; }
    }
}
