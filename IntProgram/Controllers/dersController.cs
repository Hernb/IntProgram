using IntProgram.EF;
using IntProgram.Models;
using Microsoft.AspNetCore.Mvc;

namespace IntProgram.Controllers
{
    public class dersController : Controller
    {
        public IActionResult Index()
        {
            var context = new kayitdbEntities();
            var derslistele = context.derstablo.ToList();
            var yntmtbl = context.okulyonetimtablo.ToList();
            return View(derslistele);
        }

        public IActionResult derskle()
        {            
            return View();
        }

        [HttpPost]        
        public IActionResult ekle(Models.derstablo ders)
        {
            if (ders != null)
            {
                var context = new kayitdbEntities();
                var yonetimlstl = context.okulyonetimtablo.ToList();
                var dersekle = new derstablo();
                dersekle.dersadi = ders.dersadi;
                dersekle.derskredisi = ders.derskredisi;
                var IdDegeri = context.okulyonetimtablo.FirstOrDefault(x => x.yonetimadsoyad == ders.okulyonetimdef.yonetimadsoyad);
                dersekle.okulyonetimdef = IdDegeri;
                context.derstablo.Add(dersekle);
                context.SaveChanges();
                return RedirectToAction("Index");

            }
            return View();
        }

        public IActionResult derssil(int id)
        {
            var context = new kayitdbEntities();
            var derssil = context.derstablo.FirstOrDefault(x => x.dersid == id);
            context.derstablo.Remove(derssil);
            context.SaveChanges();
            return RedirectToAction("Index");
        }

        public IActionResult dersguncel(int id)
        {
            var context = new kayitdbEntities();
            var gncll = context.derstablo.FirstOrDefault(x => x.dersid == id);
            var OkulYonetimlstl = context.okulyonetimtablo.ToList();
            return View(gncll);
        }

        [HttpPost]       
        public IActionResult guncelle(Models.derstablo ders)
        {
            var context = new kayitdbEntities();
            var gncll = context.derstablo.FirstOrDefault(x => x.dersid == ders.dersid);
            context.derstablo.Remove(gncll);
            var dersekle = new derstablo();
            dersekle.dersid = ders.dersid;
            dersekle.dersadi = ders.dersadi;
            dersekle.derskredisi = ders.derskredisi;
            var getir = context.okulyonetimtablo.FirstOrDefault(x => x.yonetimadsoyad == ders.okulyonetimdef.yonetimadsoyad);            
            dersekle.okulyonetimdef = getir;
            context.derstablo.Add(dersekle);
            context.SaveChanges();
            return RedirectToAction("Index");
        }
    }
}
