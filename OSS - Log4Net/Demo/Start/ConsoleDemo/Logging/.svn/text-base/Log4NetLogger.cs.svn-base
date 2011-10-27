using System;
using log4net;

namespace Log4NetDemo.Logging
{
    public interface ILogger
    {
        void Debug(string message);
        void Information(string message);
        void Information(string message, Exception exception);
        void Warn(string message);
        void Warn(string message, Exception exception);
        void Error(string message);
        void Error(string message, Exception exception);
        void Fatal(string message);
        void Fatal(string message, Exception exception);
    }

    public class Log4NetLogger : ILogger
    {
        public Log4NetLogger(ILog log)
        {
            _log = log;
        }

        private readonly ILog _log;

        public void Debug(string message)
        {
            _log.Debug(message);
        }

        public void Information(string message)
        {
            _log.Info(message);
        }

        public void Information(string message, Exception exception)
        {
            _log.Info(message, exception);
        }
        
        public void Warn(string message)
        {
            _log.Warn(message);
        }

        public void Warn(string message, Exception exception)
        {
            _log.Warn(message, exception);
        }

        public void Error(string message)
        {
            _log.Error(message);
        }

        public void Error(string message, Exception exception)
        {
            _log.Error(message, exception);
        }

        public void Fatal(string message)
        {
            _log.Fatal(message);
        }

        public void Fatal(string message, Exception exception)
        {
            _log.Fatal(message, exception);
        }
    }
}
