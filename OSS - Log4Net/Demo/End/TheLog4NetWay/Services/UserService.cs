using Log4NetDemo.Domain;
using log4net;

namespace Log4NetDemo.Services
{
    public class UserService
    {
        private static ILog _log = LogManager.GetLogger(typeof (UserService));

        public UserService()
        {
            _log.Debug("User Service Created");
        }

        public User GetUserById(int id)
        {
            _log.Debug("Retrieving user with id: " + id);
            return new User() {Id = id, Name = "John Doe"};
        }
    }
}