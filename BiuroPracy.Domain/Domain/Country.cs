﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BiuroPracy.Domain
{
    public class Country
    {
        public virtual int Id { get; set; }
        public virtual string CountryName { get; set; }
    }
}