namespace Attendee.BusinessLayer_CS
{
    public class Attendee
    {
        public int Age { get; set; }

        private string _firstname;
        public string FirstName
        {
            get { return _firstname; }
            set { _firstname = value; }
        }

        private string _lastName;
        public string LastName
        {
            get { return _lastName; }
            set { _lastName = value; }
        }

        public bool Save()
        {
            return true;
        }
    }
}
