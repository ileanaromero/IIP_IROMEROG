using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace IIP_IROMEROG.CLASES
{
    public class registro_equipos
    {
        public int Idequipo { get; set; }

        public string Desc_equipo { get; set; }

        public string Modelo { get; set; }
        public registro_equipos(int idequipo, string descripcion, string modelo)
        {

            Desc_equipo = descripcion;

            Modelo = modelo;

        }

        public registro_equipos() { }

        public void Agregar() { }
        public void Borrar () { }
        public void Mofidicar() { }
        public void Consultar () { }
    }
}