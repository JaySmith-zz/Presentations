namespace TestProject.Mocks
{
    using System;

    using Core.Views;

    public class RegistrartionViewMock : IRegistrationView
    {
        public string FirstName
        {
            get { return "Jay"; }
        }

        public string LastName
        {
            get { return "Smith"; }
        }

        private int _age = 0;
        public int Age
        {
            get { return _age; }
            set { _age = value; }
        }

        private bool _registrationSuccessful = false;
        public bool RegistrationSuccessful
        {
            set { _registrationSuccessful = value; }
            get { return _registrationSuccessful; }
        }

        public void RaiseInitialize()
        {
            if (Initialize != null)
                Initialize(this, EventArgs.Empty);
        }

        public void RaiseRegisterUser()
        {
            if (RegisterUser != null)
                RegisterUser(this, EventArgs.Empty);
        }

        public event EventHandler<EventArgs> Initialize;

        public event EventHandler<EventArgs> RegisterUser;
    }
}