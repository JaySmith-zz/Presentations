using System;
using Log4NetDemo.Services;

namespace Log4NetDemo
{
    class Program
    {
        static void Main(string[] args)
        {
            Log.For(typeof(Program)).Debug("Program Started...");

            var user = new UserService().GetUserById(1);

            //var menu = new MenuService().GetMenuByUser(user);

            Console.ReadLine();
        }
    }
}
