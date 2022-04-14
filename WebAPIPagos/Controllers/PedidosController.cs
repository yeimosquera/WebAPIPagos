using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using WebAPIPagos.Data;
using WebAPIPagos.Models;

namespace WebAPIPagos.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class PedidosController : ControllerBase
    {
        private readonly WebAPIPagosContext _context;

        public PedidosController(WebAPIPagosContext context)
        {
            _context = context;
        }

        // GET: api/Pedidos
        [HttpGet]
        public async Task<ActionResult<IEnumerable<Pedidos>>> GetPedidos()
        {
            return await _context.Pedidos.ToListAsync();
        }

        // GET: api/Pedidos/5
        [HttpGet("{id}")]
        public async Task<ActionResult<Pedidos>> GetPedidos(int id)
        {
            var pedidos = await _context.Pedidos.FindAsync(id);

            if (pedidos == null)

            {
                var result = new NotFoundObjectResult(new { Codigo = 100, Mensaje = "No se encontró el Pedido con Id: " + id, Titulo = "Info" });
                return result;
            }

            return pedidos;
        }

        // PUT: api/Pedidos/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for
        // more details, see https://go.microsoft.com/fwlink/?linkid=2123754.
        [HttpPut("{id}")]
        public async Task<IActionResult> FacturarPedidos(int id, Pedidos pedidos)
        {
            if (id != pedidos.Id)
            {
                return BadRequest();
            }


            pedidos.Pago = true; //Cambiar estado a facturado
            pedidos.Enviado = true; //Cambiar estado de envio a enviado para logística

            _context.Entry(pedidos).State = EntityState.Modified;

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!PedidosExists(id))
                {
                    var result = new NotFoundObjectResult(new { Codigo = 100, Mensaje = "No se encontró el Pedido con Id: " + id, Titulo = "Info" });
                    return result;
                }
                else
                {
                    throw;
                }
            }

            return NoContent();
        }

        // POST: api/Pedidos
        // To protect from overposting attacks, enable the specific properties you want to bind to, for
        // more details, see https://go.microsoft.com/fwlink/?linkid=2123754.
        [HttpPost]
        public async Task<ActionResult<Pedidos>> PostPedidos(Pedidos pedidos)
        {

            
            decimal subtotal , total, iva;          

            
            var productos = await _context.Productos.FindAsync(pedidos.IdProducto);//Validar que el producto exista en la base de datos
            var usuario = await _context.Productos.FindAsync(pedidos.IdUsuario);//Validar que el usuario exista en la base de datos
            if (productos == null)
            {
                var result = new NotFoundObjectResult(new { Codigo = 100, Mensaje = "No se encontró el IdProducto: " + pedidos.IdProducto, Titulo = "Info" });
                return result;
            } else if (pedidos.Catidad <= 0) // Validad que se envie una cantidad para el producto
            {                
                var result = new NotFoundObjectResult(new { Codigo = 100, Mensaje = "La cantidad del producto debe ser mayo que cero.", Titulo = "Info" });
                return result;

            }
            else if (usuario == null)
            {
                var result = new NotFoundObjectResult(new { Codigo = 100, Mensaje = "No se encontró el IdUsuario: " + pedidos.IdUsuario, Titulo = "Info" });
                return result;
            }

            subtotal = productos.Precio * pedidos.Catidad;
            iva = (subtotal * 19 / 100);
            total = subtotal + iva; //Calcular el IVA (19%)
            pedidos.Subtotal = subtotal;
            pedidos.Iva = iva;
            pedidos.Total = total;


            _context.Pedidos.Add(pedidos);
            await _context.SaveChangesAsync();

            return CreatedAtAction("GetPedidos", new { id = pedidos.Id }, pedidos);
        }

        // DELETE: api/Pedidos/5
        [HttpDelete("{id}")]
        public async Task<ActionResult<Pedidos>> DeletePedidos(int id)
        {
            var pedidos = await _context.Pedidos.FindAsync(id);
            if (pedidos == null)
            {
                var result = new NotFoundObjectResult(new { Codigo = 100, Mensaje = "No se encontró el Pedido con Id: " + id, Titulo = "Info" });
                return result;
            }

            _context.Pedidos.Remove(pedidos);
            await _context.SaveChangesAsync();

            return pedidos;
        }

        private bool PedidosExists(int id)
        {
            return _context.Pedidos.Any(e => e.Id == id);
        }

        
    }
}
