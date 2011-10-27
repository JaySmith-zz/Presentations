using Log4NetDemo.Domain;

namespace Log4NetDemo.Services
{
    public class MenuService
    {
        public MenuService()
        {
            Log.For(this).Debug("Menu Service Created");
        }

        public Menu GetMenuByUser(User user)
        {
            Log.For(this).Debug("Getting menu by user with user id: " + user.Id);
            return GetMenuByUserId(user.Id);
        }

        public Menu GetMenuByUserId(int id)
        {
            Log.For(this).Debug("Getting menu by user id: " + id);
            return new Menu() {Id = id, Name = "Menu " + id};
        }
    }
}