using IntProgram.EF;
using Microsoft.AspNetCore.Mvc;

namespace IntProgram.Controllers
{
    public class ogrencilerController : Controller
    {
        public IActionResult Index()
        {

            var context = new kayitdbEntities();
            var ogrencilergstr = context.ogrencilertablo.ToList();
            return View(ogrencilergstr);
            
        }

        public IActionResult ogrenciekle()
        {
            return View();
        }

        [HttpPost]
        public IActionResult ekle(Models.ogrencilertablo ogrenciler)
        {            
            if (ogrenciler != null)
            {
                var context = new kayitdbEntities();                
                context.ogrencilertablo.Add(ogrenciler);
                context.SaveChanges();
                return RedirectToAction("Index");

            }
            return View();
        }

        [HttpPost]
        public IActionResult ogrencilersil(int id)
        {
            var context = new kayitdbEntities();            
            var ogrencisil = context.ogrencilertablo.FirstOrDefault(x => x.ogrenciid == id);            
            context.ogrencilertablo.Remove(ogrencisil);
            context.SaveChanges();
            return RedirectToAction("Index");
        }

        public IActionResult ogrencilerguncelle(int id)
        {
            var context = new kayitdbEntities();            
            var gncll = context.ogrencilertablo.FirstOrDefault(x => x.ogrenciid == id);
            return View(gncll);
        }

        [HttpPost]       
        public IActionResult gncll(Models.ogrencilertablo ogrenciler)
        {
            var context = new kayitdbEntities();            
            var gncll = context.ogrencilertablo.FirstOrDefault(x => x.ogrenciid == ogrenciler.ogrenciid);
            context.ogrencilertablo.Remove(gncll);
            context.ogrencilertablo.Add(ogrenciler);
            context.SaveChanges();
            return RedirectToAction("Index");
        }

    }
}
