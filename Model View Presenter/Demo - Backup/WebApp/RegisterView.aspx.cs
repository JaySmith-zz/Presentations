using System;
using System.Web.UI;

namespace WebApp
{
    using Core.Presenters;
    using Core.Views;

    public partial class RegisterView : Page, IRegistrationView
    {
        private RegistrationPresenter presenter;

        protected void Page_Load(object sender, EventArgs e)
        {
            this.presenter = new RegistrationPresenter(this);

            if (Initialize != null)
                Initialize(this, EventArgs.Empty);
        }

        protected void ButtonRegisterClick(object sender, EventArgs e)
        {
            if (RegisterUser != null)
                RegisterUser(this, EventArgs.Empty);
        }

        public string FirstName
        {
            get { return TextBoxFirstName.Text; }
        }

        public string LastName
        {
            get { return TextBoxLastName.Text; }
        }

        public int Age
        {
            get { return Convert.ToInt32(TextBoxAge.Text); }
            set { TextBoxAge.Text = value.ToString(); }
        }

        public bool RegistrationSuccessful
        {
            set
            {
                this.LabelMessage.Text = value ? "Attendee save sucess..." : "Attendee save failed...";
            }
        }

        public event EventHandler<EventArgs> Initialize;

        public event EventHandler<EventArgs> RegisterUser;
    }
}