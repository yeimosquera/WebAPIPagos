using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace WebAPIPagos.Models
{
    public class Pedidos
    {
        public int Id { get; set; }
        public int IdProducto { get; set; }
        public int IdUsuario { get; set; }
        public int Catidad { get; set; }
        public decimal Iva { get; set; }
        public decimal Subtotal { get; set; }
        public decimal Total { get; set; }
        public bool Pago { get; set; }        
        public bool Enviado { get; set; }

        
    }
}
