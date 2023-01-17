using System.ComponentModel.DataAnnotations;

namespace IntProgram.Models
{
    public class ogrenciderstablo
    {
        public int ogrencidersid { get; set; }

        [Required]
        public int ogrencidersdersid { get; set; }

        public int ogrencidersogrenciid { get; set; }


        public ogrencilertablo ogrencidef { get; set; }    

        public derstablo dersdef { get; set; }
    }
}
