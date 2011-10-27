using Log4NetDemo.Domain;
using log4net;

namespace Log4NetDemo.Services
{
    public class MenuService
    {
        private static ILog _log = LogManager.GetLogger(typeof(UserService));

        public MenuService()
        {
            _log.Debug("Menu Service Created");
        }

        public Menu GetMenuByUser(User user)
        {
            _log.Debug("Getting menu by user with user id: " + user.Id);
            return GetMenuByUserId(user.Id);
        }

        public Menu GetMenuByUserId(int id)
        {
            _log.Debug("Getting menu by user id: " + id);
            return new Menu() { Id = id, Name = "Menu " + id };
        }
    }
}