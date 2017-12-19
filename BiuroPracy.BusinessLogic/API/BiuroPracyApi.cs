using BiuroPracy.BusinessLogic;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using BiuroPracy.Domain;
using BiuroPracy.BusinessLogic.API.Interface;
using NHibernate;
using BiuroPracy.BusinessLogic.NHibernate;
using BiuroPracy.Domain;

namespace BiuroPracy.BusinessLogic.API.Interface
{
   public class BiuroPracyApi : BaseApi, IBiuroPracyApi
    {
        public void TestNHibernate()
        {
           try
            {
                using (var session = NHibernateBase.Session)
                {
                    using (var transaction = session.BeginTransaction())
                    {
                        var proffesion = session.Get<Proffesion>(1);
                        
                    }



                }



            }
            catch(Exception e)
            {

            }



        }
    }
}
