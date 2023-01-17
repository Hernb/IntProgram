using IntProgram.EF;
using IntProgram.Models;
using Microsoft.AspNetCore.Mvc;

namespace IntProgram.Controllers
{
    public class ogrencidersController : Controller
    {
        public IActionResult Index()
        {
            var context = new kayitdbEntities();
            var ogrenciderslistele = context.ogrenciderstablo.ToList();
            var derslistele = context.derstablo.ToList();
            var ogrencilistele = context.ogrencilertablo.ToList();

            return View(ogrenciderslistele);
        }

        public IActionResult ogrencidersekle()
        {
            return View();
        }

        [HttpPost]        
        public IActionResult ekle(Models.ogrenciderstablo ogrenciders)
        {

            if (ogrenciders != null)
            {
                var context = new kayitdbEntities();
                var derslistele = context.derstablo.ToList();
                var ogrencilistele = context.ogrencilertablo.ToList();

              
                var yeniogrenciders = new ogrenciderstablo();               
                var dersindegeri = context.derstablo.FirstOrDefault(x => x.dersadi == ogrenciders.dersdef.dersadi);
                yeniogrenciders.dersdef = dersindegeri;               
                var ogrencidegeri = context.ogrencilertablo.FirstOrDefault(x => x.ogrenciadsoyad == ogrenciders.ogrencidef.ogrenciadsoyad);
                yeniogrenciders.ogrencidef = ogrencidegeri;              
                context.ogrenciderstablo.Add(yeniogrenciders);
                context.SaveChanges();
                return RedirectToAction("Index");

            }

            return View();
        }

      
        public IActionResult ogrenciderssil(int id)
        {
            var context = new kayitdbEntities();
            var ogrenciderssl = context.ogrenciderstablo.FirstOrDefault(x => x.ogrencidersid == id);
            context.ogrenciderstablo.Remove(ogrenciderssl);
            context.SaveChanges();
            return RedirectToAction("Index");
        }

      
        public IActionResult ogrencidersguncelle(int id)
        {
            var context = new kayitdbEntities();           
            var gstr = context.ogrenciderstablo.FirstOrDefault(x => x.ogrencidersid == id);          
            var ogrenciderslistele = context.ogrenciderstablo.ToList();
            var ogrencilerlistele = context.ogrencilertablo.ToList();
            var derslistele = context.derstablo.ToList();
            return View(gstr);
        }

        [HttpPost]
        public IActionResult guncelle(Models.ogrenciderstablo ogrenciders)
        {
            var context = new kayitdbEntities();
            var guncellee = context.ogrenciderstablo.FirstOrDefault(x => x.ogrencidersid == ogrenciders.ogrencidersid);
            context.ogrenciderstablo.Remove(guncellee);
            var yeniogrenciders = new ogrenciderstablo();
            yeniogrenciders.ogrencidersid = ogrenciders.ogrencidersid;
            var dersdegeri = context.derstablo.FirstOrDefault(x => x.dersadi == ogrenciders.dersdef.dersadi);
            yeniogrenciders.dersdef = dersdegeri;
            var ogrencidegeri = context.ogrencilertablo.FirstOrDefault(x => x.ogrenciadsoyad == ogrenciders.ogrencidef.ogrenciadsoyad);
            yeniogrenciders.ogrencidef = ogrencidegeri;
            context.ogrenciderstablo.Add(yeniogrenciders);
            context.SaveChanges();
            return RedirectToAction("Index");
        }
    }
}
