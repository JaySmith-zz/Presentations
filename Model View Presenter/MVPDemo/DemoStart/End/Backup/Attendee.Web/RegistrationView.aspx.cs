using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using Attendee.PresentationLayer_CS;

namespace Attendee.Web_CS
{
    public partial class RegistrationView : Page, IRegistrationView
    {
        private RegistrationPresenter _presenter;

        protected void Page_Load(object sender, EventArgs e)
        {
            _presenter = new RegistrationPresenter(this);

            if (!IsPostBack)
            {
                // Set the Focus to the First Name TextBox
                TextBoxFirstName.Focus();

                if (Initialize != null)
                    Initialize(this, EventArgs.Empty);
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

        #region IRegistrationView Members

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
                if (value)
                    Response.Redirect("ThankYou.aspx");
            }
        }

        public event EventHandler<EventArgs> Initialize;
        public event EventHandler<EventArgs> RegisterUser;

        #endregion
    }
}
