using System;

namespace Attendee.PresentationLayer_CS
{
    public class RegistrationPresenter
    {
        // Declare the reference to the view
        private readonly IRegistrationView _view;

        public RegistrationPresenter(IRegistrationView view)
        {
            _view = view;
         
            Initialize();
        }

        void Initialize()
        {
            // Register the event handlers
            _view.Initialize += _view_Initialize;
            _view.RegisterUser += _view_RegisterUser;
            
        }

        void _view_Initialize(object sender, EventArgs e)
        {
            // Initialize the Age to the default value of 5
            _view.Age = 5;
        }

        void _view_RegisterUser(object sender, EventArgs e)
        {
            // Register User and return to page
            BusinessLayer_CS.Attendee newAttendee = new BusinessLayer_CS.Attendee();
            newAttendee.FirstName = _view.FirstName;
            newAttendee.LastName = _view.LastName;
            newAttendee.Age = _view.Age;

            if (newAttendee.Save())
                _view.RegistrationSuccessful = true;
            else
                _view.RegistrationSuccessful = false;
        }
    }
}
