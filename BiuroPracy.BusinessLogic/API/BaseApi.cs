using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using BiuroPracy.BusinessLogic.NHibernate;
using NHibernate;

namespace BiuroPracy.BusinessLogic.API
{
    public class BaseApi
    {

        public BaseApi()
        {
            NHibernateBase nHibernate = new NHibernateBase();
            nHibernate.Initialize();
        }
    }
}
