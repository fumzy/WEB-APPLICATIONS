using DataAccess;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using WEBEIS_Services;


namespace StaffRecordAPI.Controllers
{
    public class StaffController : ApiController
    {
        //private WEBEISAPIEntities db = new WEBEISAPIEntities();
        private Staff  services = null;
        public StaffController()
        {
            this.services = new Staff();
        }
        // GET: api/Staff
        public HttpResponseMessage Get()
        {
            var staff = services.GetAllStaff();
            if (staff != null)
                return Request.CreateResponse(HttpStatusCode.OK, staff);
            else return Request.CreateErrorResponse(HttpStatusCode.NotFound, "No staff found");
        }
       
        // GET: api/Staff/5
        public HttpResponseMessage Get(int id)
        {
            var staff = services.GetSomeStaff(id);
            if (staff != null)
                return Request.CreateResponse(HttpStatusCode.OK, staff);
            else return Request.CreateErrorResponse(HttpStatusCode.NotFound
                                , "Employee with Id " + id.ToString() + " does not exist");
        }

        // POST: api/Staff
  
        public HttpResponseMessage Post([FromBody]StaffRecord staff)
        {
            services.AddStaff(staff);
            services.SaveStaff();
            //db.StaffRecords.Add(staff);
            //db.SaveChanges();
            return Request.CreateResponse(HttpStatusCode.Created); 
        }


        // PUT: api/Staff/5
        public HttpResponseMessage Put([FromUri]int id, [FromBody]StaffRecord staff)
        {
            services.UpdateStaff(staff);
            services.SaveStaff();
            return Request.CreateResponse(HttpStatusCode.OK);
        }

        // DELETE: api/Employee/5
        public HttpResponseMessage Delete(int id)
        {
            services.DeleteStaff(id);
            services.SaveStaff();
            return Request.CreateResponse(HttpStatusCode.OK);
        }
    }
}
