using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using NHibernate;
using Iesi;
using NHibernate.Cfg;
using NHibernate.Tool.hbm2ddl;

namespace BiuroPracy.BusinessLogic.NHibernate
{
    class NHibernateBase
    {
        public static Configuration configuration { get; set; }
        public static ISession session { get; set; }

        public static IStatelessSession statelessSession { get; set; }



        protected static ISessionFactory SessionFactory { get; set; }


        public static ISession Session => (session = SessionFactory.OpenSession());


        public static IStatelessSession StatelessSession => (statelessSession = SessionFactory.OpenStatelessSession());


        private static Configuration ConfigureRHibernate()
        {
            
            try
            {
                configuration = new Configuration();
                configuration.Configure();

                return configuration;
            }
            catch (Exception e)
            {

                throw;
            }
           



        }

        public void Initialize()
        {
            configuration = ConfigureRHibernate();
            SessionFactory = configuration.BuildSessionFactory();
            new SchemaExport(configuration);
        }









    }
}
