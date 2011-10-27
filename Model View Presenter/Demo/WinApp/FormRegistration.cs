using System;
using System.Windows.Forms;

namespace WinApp
{
    using Core.Presenters;
    using Core.Views;

    public partial class FormRegistration : Form, IRegistrationView
    {
        RegistrationPresenter presenter;

        public FormRegistration()
        {
            InitializeComponent();
        }

        private void FormRegistrationLoad(object sender, EventArgs e)
        {
            this.presenter = new RegistrationPresenter(this);

            if (Initialize != null)
                Initialize(this, EventArgs.Empty);
        }

        private void ButtonRegisterClick(object sender, EventArgs e)
        {
            if (RegisterUser != null)
                RegisterUser(this, EventArgs.Empty);
        }

        public string FirstName
        {
            get { return textBoxFirstName.Text; }
        }

        public string LastName
        {
            get { return textBoxLastName.Text; }
        }

        public int Age
        {
            get { return Convert.ToInt32(textBoxAge.Text); }
            set { textBoxAge.Text = value.ToString(); }
        }

        public bool RegistrationSuccessful
        {
            set
            {
                labelMessage.Text = value ? "Registartion Successfull..." : "Registration failure...";
            }
        }

        public event EventHandler<EventArgs> Initialize;

        public event EventHandler<EventArgs> RegisterUser;
    }
}
