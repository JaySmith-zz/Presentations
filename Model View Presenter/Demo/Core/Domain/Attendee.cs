namespace Core.Domain
{
    public class Attendee
    {
        public int Age { get; set; }

        public string FirstName { get; set; }

        public string LastName { get; set; }

        public string SocialNumber { get; set; }

        public bool Save()
        {
            return true;
        }
    }
}
