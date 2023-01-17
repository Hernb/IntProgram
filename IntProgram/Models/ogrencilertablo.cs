using System.ComponentModel.DataAnnotations;

namespace IntProgram.Models
{
    public class ogrencilertablo
    {

        public int ogrenciid { get; set; }

        
        public string ogrenciadsoyad { get; set; }

        
        public DateTime ogrencikayittarih { get; set; }

        
        public string ogrencino { get; set; }

        
        public DateTime ogrencidogumtarih { get; set; }

       
        public string ogrencibolum { get; set; }


        
        public ICollection<ogrenciderstablo> ogrenciderstabloogrenci { get; set; }
    }
}
