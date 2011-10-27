using System;

namespace Attendee.PresentationLayer_CS
{
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
