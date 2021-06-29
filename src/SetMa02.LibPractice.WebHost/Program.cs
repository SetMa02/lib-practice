using Microsoft.AspNetCore.Hosting;
using Microsoft.Extensions.Hosting;

namespace SetMa02.LibPractice.WebHost
{
    public class Program
    {
        public static void Main(string[] args)
        {
            CreateHostBuilder(args).Build().Run();
        }

        public static IHostBuilder CreateHostBuilder(string[] args)
        {
            var hostBuilder = Host.CreateDefaultBuilder(args);

            hostBuilder.ConfigureWebHostDefaults(builder => builder.UseStartup<Startup>());

            return hostBuilder;
        }
    }
}