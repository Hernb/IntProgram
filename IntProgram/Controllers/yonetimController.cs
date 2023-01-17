using IntProgram.EF;
using Microsoft.AspNetCore.Mvc;

namespace IntProgram.Controllers
{
    public class yonetimController : Controller
    {
        public IActionResult Index()
        {
            var context = new kayitdbEntities();
            var okulyonetimlistele = context.okulyonetimtablo.ToList();
            return View(okulyonetimlistele);
        }

        public IActionResult yonetimekle()
        {
            return View();
        }

        [HttpPost]
        public IActionResult ekle(Models.okulyonetimtablo yonetim)
        {           
            if (yonetim != null)
            {
                var context = new kayitdbEntities();
                context.okulyonetimtablo.Add(yonetim);
                context.SaveChanges();
                return RedirectToAction("Index");

            }
            return View();
        }

        public IActionResult yonetimsil(int id)
        {            
            var context = new kayitdbEntities();
            var gtr = context.okulyonetimtablo.FirstOrDefault(x => x.yonetimid == id);
            context.okulyonetimtablo.Remove(gtr);
            context.SaveChanges();
            return RedirectToAction("Index");
        }

       
        public IActionResult yonetimguncelle(int id)
        {           
            var context = new kayitdbEntities();
            var gncll = context.okulyonetimtablo.FirstOrDefault(x => x.yonetimid == id);
            return View(gncll);
        }

        [HttpPost]        
        public IActionResult guncelle(Models.okulyonetimtablo yonetim)
        {
            var context = new kayitdbEntities();
            var gncll = context.okulyonetimtablo.FirstOrDefault(x => x.yonetimid == yonetim.yonetimid);
            context.okulyonetimtablo.Remove(gncll);
            context.okulyonetimtablo.Add(yonetim);
            context.SaveChanges();
            return RedirectToAction("Index");
        }
    }
}
