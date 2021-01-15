using log4net.Config;
using Topshelf;

namespace MyProject.WindowsService
{
    public class Program
    {
        public static void Main()
        {
           
            XmlConfigurator.Configure();
           
            HostFactory.Run(x =>
            {

                x.Service<MyService>(s =>
                {
                    s.ConstructUsing(name => new MyService());
                    s.WhenStarted(tc => tc.Start());
                    s.WhenStopped(tc => tc.Stop());
                });
                x.RunAsLocalSystem();

                x.SetDescription("MyProject.WindowsService");
                x.SetDisplayName("MyProject.WindowsService");
                x.SetServiceName("MyProject.WindowsService");
            });
        }
    }
}
