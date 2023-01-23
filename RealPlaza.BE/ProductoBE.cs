using System;
using System.Collections.Generic;

namespace RealPlaza.BE
{
    public class ProductoBE
    {
        public Int32 ProductoID { get; set; }
        public String Nombre { get; set; }
        public String CodigoProducto { get; set; }
        public Int32 Stock { get; set; }
        public String Imagen { get; set; }
        public String Descripcion { get; set; }
        public Int32 Precio { get; set; }
        public TipoProducto tipoProducto{ get; set; }
    }

    public class ProductoParamModel
    {
        public Int32 Pagina { get; set; }
        public Int32 Cantidad { get; set; }
        public Int32 PrecioInicial { get; set; }
        public Int32 PrecioFinal { get; set; }
        public String TipoFiltro { get; set; }
    }

}
