using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;
using WebAPIPagos.Models;

namespace WebAPIPagos.Data
{
    public class WebAPIPagosContext : DbContext
    {
        public WebAPIPagosContext (DbContextOptions<WebAPIPagosContext> options)
            : base(options)
        {
        }
        public DbSet<WebAPIPagos.Models.Pedidos> Pedidos { get; set; }
        public DbSet<WebAPIPagos.Models.Productos> Productos { get; set; }
        public DbSet<WebAPIPagos.Models.Usuario> Usuario { get; set; }

        
    }
}
