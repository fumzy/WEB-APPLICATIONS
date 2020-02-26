using DataAccess;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using WEBEIS_Repository.Repository;

namespace WEBEIS_Services
{
    public class Staff
    {
        private IRepository<StaffRecord> _repository = null;
        public Staff()
        {
            this._repository = new Repository<StaffRecord>();
        }

        public IEnumerable<StaffRecord> GetAllStaff()
        {
            var AllStaff = _repository.GetAll();
            return AllStaff;
        }

        public StaffRecord GetSomeStaff(object Id)
        {
            var SpecificStaff = _repository.GetById(Id);
            return SpecificStaff;
        }

        public void AddStaff(StaffRecord obj)
        {
            _repository.Insert(obj);
           
        }
        public void UpdateStaff(StaffRecord obj)
        {
            _repository.Update(obj);
        }

        public void DeleteStaff(object Id)
        {
            _repository.Delete(Id);
        }
        public void SaveStaff()
        {
            _repository.Save();
            
        }
        
    }
}
