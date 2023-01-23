using System;
using System.Data.SqlClient;
using System.Data;
using System.Collections.Generic;
using RealPlaza.BE;

namespace RealPlaza.DA
{
    public class ProductoDA : BaseDA
    {

        public List<ProductoBE> Listar_Productos()
        {
            List<ProductoBE> productos = new List<ProductoBE>();
            ProductoBE producto = null;
            try
            {
                using (SqlConnection cnx = new SqlConnection(ConnectionString))
                {
                    SqlCommand cmd = new SqlCommand("[Tienda].[Productos_Listar]", cnx);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.CommandTimeout = 600;

                    cnx.Open();
                    IDataReader dr = cmd.ExecuteReader();
                    while (dr.Read())
                    {
                        producto = new ProductoBE();
                        producto.tipoProducto = new TipoProducto();
                        producto.ProductoID = dr.GetInt32(dr.GetOrdinal("ProductoID"));
                        producto.CodigoProducto = dr.GetString(dr.GetOrdinal("CodigoProducto"));
                        producto.Stock = dr.GetInt32(dr.GetOrdinal("Stock"));
                        producto.Precio = dr.GetInt32(dr.GetOrdinal("Precio"));
                        producto.Nombre = dr.GetString(dr.GetOrdinal("Nombre"));

                        if (!dr.IsDBNull(dr.GetOrdinal("Imagen")))
                        {
                            producto.Imagen = dr.GetString(dr.GetOrdinal("Imagen"));
                        }
                        if (!dr.IsDBNull(dr.GetOrdinal("Descripcion")))
                        {
                            producto.Descripcion = dr.GetString(dr.GetOrdinal("Descripcion"));
                        }
                        producto.tipoProducto.TipoProductoID = dr.GetInt32(dr.GetOrdinal("TipoProductoID"));
                        productos.Add(producto);
                    }

                    cnx.Close();
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return productos;
        }
    }
}
