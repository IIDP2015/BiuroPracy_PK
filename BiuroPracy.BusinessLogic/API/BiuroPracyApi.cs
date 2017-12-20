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
                        try
                        {
                            var proffesion = session.Get<Proffesion>(1);

                            //                            var id = AddEmployee(session);
                            UpdateEmployee(session);
                            //GetEmployee(session);
                            transaction.Commit();
                        }
                        catch (Exception e)
                        {
                            transaction.Rollback();
                        }

                    }



                }



            }
            catch(Exception e)
            {

            }



        }

        private int AddEmployee(ISession session)
        {
            var employee = new Employee()
            {
                Email = "test@gmail.com",
                DateOfBirth = DateTime.Now.AddYears(-25),
                Password = "54632",
                Contract = new Contract() { Id = 3},
                Proffesion = new Proffesion() { Id = 3},
                Name = "Szczpan",
                Surname = "Zaskalski",
                Location = new Location()
                {
                    Street = "Mikołajczyka",
                    City = new City() { Id = 2},
                    Country = new Country() { Id = 2},
                    PostalCode = "35-209"
                }
            };
            return (int)session.Save(employee);
        }

        private void UpdateEmployee(ISession session)
        {
            var employee = session.Get<Employee>(19);

            employee.Name = "Arnold";
            employee.Surname = "Boczek";

            employee.Location = new Location()
            {
                City = new City() { Id = 7},
                Country = new Country() { Id = 5},
                PostalCode = "39-308",
                Street = "Piłsudskiego 4/6"
            };
            
            session.Update(employee);
        }
    }
}
