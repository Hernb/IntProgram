using Microsoft.EntityFrameworkCore;

namespace IntProgram.EF
{
    public class kayitdbEntities : DbContext
    {
        public kayitdbEntities()
        {

        }
        
        public kayitdbEntities(DbContextOptions<kayitdbEntities> options) : base(options) { }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            optionsBuilder.UseSqlServer(@"Initial Catalog=kayitdb;Data Source=DESKTOP-Q7MCB3D;TrustServerCertificate=True;Persist Security Info=True;");
        }

       
        public DbSet<Models.okulyonetimtablo> okulyonetimtablo { get; set; }

        public DbSet<Models.ogrencilertablo> ogrencilertablo { get; set; }

        public DbSet<Models.derstablo> derstablo { get; set; }

        public DbSet<Models.ogrenciderstablo> ogrenciderstablo { get; set; }
        

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Models.derstablo>()
                .HasOne(e => e.okulyonetimdef)
                .WithMany(c => c.derss)
                .HasForeignKey(s => s.dersokulyonetimid);

            modelBuilder.Entity<Models.ogrenciderstablo>()
                .HasOne(e => e.ogrencidef)
                .WithMany(c => c.ogrenciderstabloogrenci)
                .HasForeignKey(s => s.ogrencidersogrenciid);

            modelBuilder.Entity<Models.ogrenciderstablo>()
                .HasOne(e => e.dersdef)
                .WithMany(c => c.OgreciDersDers)
                .HasForeignKey(s => s.ogrencidersdersid);

        }
    }
}

