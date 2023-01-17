namespace IntProgram.Models
{
    public class derstablo
    {
        public int dersid { get; set; }

       
        public string dersadi { get; set; }

        
        public string derskredisi { get; set; }

        
        public int dersokulyonetimid { get; set; }

        
        public okulyonetimtablo okulyonetimdef { get; set; }

        
        public ICollection<ogrenciderstablo> OgreciDersDers { get; set; }
    }
}
