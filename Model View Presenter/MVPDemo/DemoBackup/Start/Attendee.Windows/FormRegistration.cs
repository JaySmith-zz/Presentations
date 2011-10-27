using System;
using System.Windows.Forms;

namespace Attendee.Windows_CS
{
    //TODO: Step 2 Implement the IRegistrationView interface
    public partial class FormRegistration : Form
    {
        //TODO: Step 4: create variable to hold reference to presenter

        public FormRegistration()
        {
            //TODO: Create presenter object

            InitializeComponent();
        }

        private void FormMain_Load(object sender, EventArgs e)
        {
            //TODO: Step 6: Raise the Initialize Event to be handled by the presenter
        }

        private void buttonRegister_Click(object sender, EventArgs e)
        {
            //TODO: Step 7: Raise the Register User Event to be handled by the Presenter
        }


    }
}