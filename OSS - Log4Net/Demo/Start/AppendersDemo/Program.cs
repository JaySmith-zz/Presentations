using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Log4NetDemo
{
    class Program
    {
        static void Main(string[] args)
        {
            log4net.Config.BasicConfigurator.Configure();
            log4net.ILog log = log4net.LogManager.GetLogger(typeof(Program));

            log.Debug("hello world");
            log.Info("i'm a simple log4net demo.");
            log.Warn("... better be careful ...");
            log.Error("ruh-roh: something went way wrong");
            log.Fatal("omg we are doooooomed!@");

            Console.ReadLine();
        }
    }
}
