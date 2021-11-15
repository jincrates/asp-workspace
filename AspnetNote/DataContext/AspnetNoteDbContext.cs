using AspnetNote.Models;
using Microsoft.EntityFrameworkCore;

namespace AspnetNote.DataContext
{
    public class AspnetNoteDbContext : DbContext
    {
        public DbSet<User> Users { get; set; }
        public DbSet<Note> Notes { get; set; }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            // base.OnConfiguring(optionsBuilder);
            optionsBuilder.UseSqlServer(@"Server=localhost;Database=AspnetNoteDb;User Id=sa;Password=1q2w3e4r!;");
        }
    }
}
