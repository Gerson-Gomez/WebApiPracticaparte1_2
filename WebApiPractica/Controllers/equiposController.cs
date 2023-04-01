using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

using WebApiPractica.Models;
using Microsoft.EntityFrameworkCore;

namespace WebApiPractica.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class equiposController : ControllerBase
    {
        private readonly equiposContext _equiposContexto;

        public equiposController(equiposContext equiposContexto)
        {
            _equiposContexto = equiposContexto;   
        }
        #region GET_ALL - GET
        [HttpGet]
        [Route("GetAll")]

        // Metodos para la rama 2
        public ActionResult Get()
        {
            var listadoEquipos = (from equipo in _equiposContexto.equipos
                                  join estado in _equiposContexto.estados_equipo on equipo.estado_equipo_id equals estado.id_estados_equipo
                                  join tipoEquipo in _equiposContexto.tipo_equipo on equipo.tipo_equipo_id equals tipoEquipo.id_tipo_equipo
                                  join marca in _equiposContexto.Marcas on equipo.marca_id equals marca.id_marcas
                                  select new
                                  {
                                      equipo.nombre,
                                      equipo.descripcion,
                                      descripcionTipo = tipoEquipo.descripcion,
                                      marca.nombre_marca,
                                      equipo.modelo,
                                      equipo.anio_compra,
                                      equipo.costo,
                                      equipo.vida_util,
                                      estadoEquipo = estado.descripcion
                                  }).ToList();

            if (listadoEquipos.Count == 0)
            {
                return NotFound();
            }

            return Ok(listadoEquipos);
        }
        #endregion

    }
}
