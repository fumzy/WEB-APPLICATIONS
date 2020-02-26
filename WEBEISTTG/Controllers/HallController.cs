using Service.Hall;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using DataAccess;

namespace WEBEISTTG.Controllers
{
    public class HallController : Controller
    {
        private HallService services= null;

        public HallController()
        {
            this.services = new HallService();
        }
        // GET: Hall
        public ActionResult Index()
        {
            var halls = services.GetAllHalls();
            
                return View(halls);
                    
            
        }

        // GET: Hall/Details/5
        public ActionResult Details(int id)
        {
            var singlehall = services.GetSomeHalls(id);
            return View(singlehall);
        }

        // GET: Hall/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Hall/Create
        [HttpPost]
        public ActionResult Create(Hall collection)
        {
            if (ModelState.IsValid)
            {
                services.AddHall(collection);
                services.SaveHall();
                
                return RedirectToAction("Index");
            }
            else
            {
                return View(collection);
            }
        }

        // GET: Hall/Edit/5
        public ActionResult Edit(int id)
        {
            var hallrecord = services.GetSomeHalls(id);
            return View(hallrecord);
        }

        // POST: Hall/Edit/5
        [HttpPost]
        public ActionResult Edit(Hall collection)
        {
            try
            {
                services.UpdateHall(collection);
                services.SaveHall();

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: Hall/Delete/5
     
        public ActionResult Delete(int id)
        {
            var hallrecord = services.GetSomeHalls(id);
            return View(hallrecord);
        }

        // POST: Hall/Delete/5
        [HttpPost, ActionName("Delete")]
        public ActionResult DeleteItem(int id)
        {
            try
            {
                // TODO: Add delete logic here

                services.DeleteHall(id);
                services.SaveHall();
                return RedirectToAction("Index");
            }
            catch(Exception ex)
            {
                throw ex;
                
            }
        }
    }
}
