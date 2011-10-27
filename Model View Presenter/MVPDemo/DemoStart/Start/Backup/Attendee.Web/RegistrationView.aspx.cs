using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;

namespace Attendee.Web_CS
{
    public partial class RegistrationView : Page
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

        protected void ButtonRegister_Click(object sender, EventArgs e)
        {
            string query = "insert into attendees (@FirstName, @LastName, @Age);";

            string connectionString = Properties.Settings.Default.DB_Instance;

            SqlConnection cnn = new SqlConnection(connectionString);
            SqlCommand command = cnn.CreateCommand();
            command.CommandType = CommandType.Text;
            command.CommandText = query;

            command.Parameters.Add(new SqlParameter("@FirstName", TextBoxFirstName.Text));
            command.Parameters.Add(new SqlParameter("@LastName", TextBoxLastName.Text));
            command.Parameters.Add(new SqlParameter("@Age", Convert.ToInt32(TextBoxAge.Text)));

            command.ExecuteNonQuery();
        }

    }
}
