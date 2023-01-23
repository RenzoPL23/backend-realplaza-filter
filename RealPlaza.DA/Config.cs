using System;
using Microsoft.Extensions.Configuration;
using System.IO;

namespace RealPlaza.DA
{
    public static class Config
    {
        public static String GetConnectionString()
        {
            var configurationBuilder = new ConfigurationBuilder();
            var path = Path.Combine(Directory.GetCurrentDirectory(), "appsettings.json");
            configurationBuilder.AddJsonFile(path, false);

            var root = configurationBuilder.Build();
            String ConnectionString = root.GetConnectionString("RealPlaza");
            return ConnectionString;
        }
    }
}
