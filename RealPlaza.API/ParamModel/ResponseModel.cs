using System;

namespace RealPlaza.API.ParamModel
{
    public class ResponseModel
    {
        public Int32 Status { get; set; }

        public String Mensaje { get; set; }

        public Object Data { get; set; }
    }
}
