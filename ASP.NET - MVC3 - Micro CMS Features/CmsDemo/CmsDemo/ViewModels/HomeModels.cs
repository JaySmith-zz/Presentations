using CmsDemo.Domain;

namespace CmsDemo.ViewModels
{
    using System.Collections.Generic;

    public class HomeIndexModel
    {
        public HomeIndexModel()
        {
            TopContent = new List<PageContent>();
        }

        public Page Page { get; set; }

        public List<PageContent> TopContent { get; set; }
    }

    public class HomeAboutModel
    {
        public Page Page { get; set; } 
    }
}