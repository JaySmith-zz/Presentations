using System;
using Log4NetDemo.Logging;

namespace Log4NetDemo
{
    public static class Log
    {
        public static ILogger For<T>(T instance)
        {
            return For(typeof(T));
        }

        public static ILogger For(Type type)
        {
            return new Log4NetLoggerFactory().GetLoggerFor(type);
        }
    }
}