using System;
using log4net;
using log4net.Config;

namespace Log4NetDemo.Logging
{
    public interface ILoggerFactory
    {
        ILogger GetLoggerFor(Type type);
    }
    
    public class Log4NetLoggerFactory : ILoggerFactory
    {
        public Log4NetLoggerFactory()
        {
            XmlConfigurator.Configure();
        }

        public ILogger GetLoggerFor(Type type)
        {
            return new Log4NetLogger(LogManager.GetLogger(type));
        }
    }

}