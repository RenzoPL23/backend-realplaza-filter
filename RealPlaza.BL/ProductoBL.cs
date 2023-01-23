using RealPlaza.BE;
using RealPlaza.DA;
using System;
using System.Linq;
using System.Collections.Generic;

namespace RealPlaza.BL
{
    public class ProductoBL
    {

        public List<ProductoBE> Listar_Productos(ProductoParamModel param)
        {
            ProductoDA productoDA = new ProductoDA();
            List<ProductoBE> productos = new List<ProductoBE>();
            try
            {

                productos = productoDA.Listar_Productos().Where(p => p.Precio >= param.PrecioInicial && p.Precio <= param.PrecioFinal).ToList();

                switch (param.TipoFiltro)
                {
                    case "D":
                        productos = (from producto in productos
                                     orderby producto.Precio descending
                                     select producto).ToList();
                        break;
                    case "A":
                        productos = (from producto in productos
                                     orderby producto.Precio ascending
                                     select producto).ToList();
                        break;
                }

                return productos.Skip(param.Cantidad * (param.Pagina - 1)).Take(param.Cantidad).ToList();
            }
            catch (Exception)
            {
                throw;
            }

        }

        public Int32 Total(ProductoParamModel param)
        {
            ProductoDA productoDA = new ProductoDA();
            List<ProductoBE> productos = new List<ProductoBE>();
            try
            {
                productos = productoDA.Listar_Productos().Where(p => p.Precio >= param.PrecioInicial && p.Precio <= param.PrecioFinal).ToList();
                return productos.Count();
            }
            catch (Exception)
            {
                throw;
            }

        }


    }
}
