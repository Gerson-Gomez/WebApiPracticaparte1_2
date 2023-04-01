using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.SqlServer;
using System.Text.RegularExpressions;


namespace WebApiPractica.Models
{
    public class equiposContext:DbContext
    {
        public equiposContext(DbContextOptions<equiposContext>options) : base(options) { 

        }
        public DbSet<equipos> equipos { get; set; }
        public DbSet<Marca> Marcas { get; set; }
        public DbSet<TipoEquipos> tipo_equipo { get; set; }
        public DbSet<EstadosEquipos> estados_equipo { get; set; }
        public DbSet<EstadosReserva> estados_reserva { get; set; }
        public DbSet<carrerras> carreras { get; set; }
        public DbSet<Facultades> facultades { get; set; }
        public DbSet<Reserva> reservas { get; set; }
        public DbSet<Usuarios> usuarios { get; set; }
    }
}
