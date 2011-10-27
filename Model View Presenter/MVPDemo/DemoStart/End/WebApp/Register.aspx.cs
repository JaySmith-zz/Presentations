using System;

namespace WebApp
{
    using Core.Domain;

    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Set the Focus to the First Name TextBox
                TextBoxFirstName.Focus();

                TextBoxAge.Text = "5";
            }
        }

        protected void ButtonRegisterClick(object sender, EventArgs e)
        {
            var attendee = new Attendee();

            attendee.FirstName = TextBoxFirstName.Text;
            attendee.LastName = TextBoxLastName.Text;
            attendee.Age = Convert.ToInt32(TextBoxAge.Text);

            var result = attendee.Save();

            this.LabelMessage.Text = result ? "Attendee save sucess..." : "Attendee save failed...";
        }
    }
}