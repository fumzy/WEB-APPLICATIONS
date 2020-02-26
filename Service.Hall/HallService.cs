using DataAccess;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using WEBEIS_Repository.Repository;

namespace Service.Hall
{
   public class HallService
    {
        private IRepository<DataAccess.Hall> repository = null;
        public HallService()
        {
            this.repository = new Repository<DataAccess.Hall>();
        }

        public IEnumerable<DataAccess.Hall> GetAllHalls()
        {
            var AllHalls = repository.GetAll();
            return AllHalls;
        }

        public DataAccess.Hall GetSomeHalls(object Id)
        {
            var SomeHalls = repository.GetById(Id);
            return SomeHalls;
        }

        public void AddHall(DataAccess.Hall obj)
        {
            repository.Insert(obj);

        }
        public void UpdateHall(DataAccess.Hall obj)
        {
            repository.Update(obj);
        }

        public void DeleteHall(object Id)
        {
            repository.Delete(Id);
        }
        public void SaveHall()
        {
            repository.Save();

        }

    }
}
