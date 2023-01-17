namespace IntProgram.Models
{
    public class okulyonetimtablo
    {
        
        public int yonetimid { get; set; }

       
        public string yonetimadsoyad { get; set; }

        
        public string yonetimgorevi { get; set; }

        public string yonetimtipi { get; set; }


       
        public ICollection<derstablo> derss { get; set; }
    }
}
