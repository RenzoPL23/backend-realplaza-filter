using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using System.Collections.Generic;
using RealPlaza.API.ParamModel;
using RealPlaza.BE;
using RealPlaza.BL;
using System;

namespace RealPlaza.API.Controllers
{
    [ApiController]
    public class ProductosController : ControllerBase
    {

        [HttpPost("productos/ListarProductos")]
        public ActionResult<ResponseModel> ListarMisAlimentos(ProductoParamModel param)
        {
            ResponseModel responseModel = new ResponseModel();
            List<ProductoBE> listaProductos = new List<ProductoBE>();
            ProductoBL productoBL = new ProductoBL();
            try
            {
                listaProductos = productoBL.Listar_Productos(param);
                responseModel.Status = 200;
                responseModel.Mensaje = "Lista de productos";
                responseModel.Data = listaProductos;
                return Ok(responseModel);

            }
            catch (Exception ex)
            {

                responseModel.Status = 500;
                //responseModel.Mensaje = "Sucedio un problema";
                responseModel.Mensaje = ex.Message;

                return StatusCode(StatusCodes.Status500InternalServerError, responseModel);
            }
        }

        [HttpPost("productos/Total")]
        public ActionResult<ResponseModel> Total(ProductoParamModel param)
        {
            ResponseModel responseModel = new ResponseModel();
            Int32 Total = 0;
            ProductoBL productoBL = new ProductoBL();
            try
            {
                Total = productoBL.Total(param);
                responseModel.Status = 200;
                responseModel.Mensaje = "Total de productos";
                responseModel.Data = Total;
                return Ok(responseModel);

            }
            catch (Exception ex)
            {

                responseModel.Status = 500;
                //responseModel.Mensaje = "Sucedio un problema";
                responseModel.Mensaje = ex.Message;

                return StatusCode(StatusCodes.Status500InternalServerError, responseModel);
            }
        }


    }
}
