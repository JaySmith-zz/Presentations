using Log4NetDemo.Domain;
using log4net;

namespace Log4NetDemo.Services
{
    // The log4net way
    public class UserService
    {
        public UserService()
        {
            Log.For(this).Debug("User Service Created");
        }

        public User GetUserById(int id)
        {
            Log.For(this).Debug("Retrieving user with id: " + id);

            return new User() {Id = id, Name = "John Doe"};
        }
    }
}