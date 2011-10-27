namespace Attendee.BusinessLayer
{
    public class Attendee
    {
        private int _age;
        public int Age
        {
            get { return _age; }
            set { _age = value; }
        }

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
