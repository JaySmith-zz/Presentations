using System;
using System.Windows.Forms;

namespace Attendee.Windows_CS
{
    using Attendee.PresentationLayer;

    public partial class FormRegistration : Form, IRegistrationView
    {
        RegistrationPresenter _presenter;

        public FormRegistration()
        {
            InitializeComponent();
        }

        private void FormMain_Load(object sender, EventArgs e)
        {
            _presenter = new RegistrationPresenter(this);

            if (Initialize != null)
                Initialize(this, EventArgs.Empty);
        }

        private void buttonRegister_Click(object sender, EventArgs e)
        {
            if (RegisterUser != null)
                RegisterUser(this, EventArgs.Empty);
        }

        #region IRegistrationView Members

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
            get { return System.Convert.ToInt32(textBoxAge.Text); }
            set { textBoxAge.Text = value.ToString(); }
        }

        public bool RegistrationSuccessful
        {
            set
            {
                if (value)
                    MessageBox.Show("Registartion Successfull...");
                else
                    MessageBox.Show("Registration failure...");
            }
        }

        public event EventHandler<EventArgs> Initialize;

        public event EventHandler<EventArgs> RegisterUser;

        #endregion
    }
}