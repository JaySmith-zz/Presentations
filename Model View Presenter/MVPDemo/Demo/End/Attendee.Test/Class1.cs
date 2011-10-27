using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Attendee;
using NUnit.Framework;

namespace Attendee.Test
{
    class MockView : IRegistrationView
    {
        #region IRegistrationView Members

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

        public event EventHandler<EventArgs> Initialize;
        public event EventHandler<EventArgs> RegisterUser;

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

        #endregion
    }

    [TestFixture]
    public class When_the_view_raises_the_Register_User_event
    {
        [Test]
        public void The_Attendee_should_be_saved()
        {
            MockView mockView = new MockView();
            RegistrationPresenter _presenter = new RegistrationPresenter(mockView);

            mockView.RaiseRegisterUser();

            Assert.AreEqual(true, mockView.RegistrationSuccessful);
        }

    }

    [TestFixture]
    public class When_the_view_raises_the_Initialize_Event
    {
        [Test]
        public void The_presenter_should_set_the_default_age()
        {
            MockView mockView = new MockView();

            RegistrationPresenter _presenter = new RegistrationPresenter(mockView);

            mockView.RaiseInitialize();

            Assert.AreEqual(5, mockView.Age);
        }
    }
}
