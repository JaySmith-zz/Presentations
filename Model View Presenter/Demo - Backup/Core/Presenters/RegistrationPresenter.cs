namespace Core.Presenters
{
    using System;

    using Core.Domain;
    using Core.Views;

    public class RegistrationPresenter
    {
        // Declare the reference to the view
        private readonly IRegistrationView view;

        public RegistrationPresenter(IRegistrationView view)
        {
            this.view = view;
         
            Initialize();
        }

        void Initialize()
        {
            // Register the event handlers
            this.view.Initialize += this.ViewInitialize;
            this.view.RegisterUser += this.ViewRegisterUser;
            
        }

        void ViewInitialize(object sender, EventArgs e)
        {
            // Initialize the Age to the default value of 5
            this.view.Age = 5;
        }

        void ViewRegisterUser(object sender, EventArgs e)
        {
            // Register User and return to page
            var newAttendee = new Attendee
                {
                    FirstName = this.view.FirstName, 
                    LastName = this.view.LastName, 
                    Age = this.view.Age
                };

            this.view.RegistrationSuccessful = newAttendee.Save();
        }
    }
}
