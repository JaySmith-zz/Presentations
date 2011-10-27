using System;
using log4net;
using log4net.Config;

namespace ConsoleDemo
{
    internal class Program
    {
        private static void Main(string[] args)
        {
            XmlConfigurator.Configure();
            ILog log = LogManager.GetLogger(typeof (Program));

            log.Debug("Whoo Nelly! What just happened?");

            Console.ReadLine();
        }
    }
}