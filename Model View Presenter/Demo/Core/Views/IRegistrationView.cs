namespace Core.Views
{
    using System;

    public interface IRegistrationView
    {
        string FirstName { get;}
        string LastName { get;}
        int Age { get; set;}

        bool RegistrationSuccessful { set;}

        event EventHandler<EventArgs> Initialize;
        event EventHandler<EventArgs> RegisterUser;
    }
}
