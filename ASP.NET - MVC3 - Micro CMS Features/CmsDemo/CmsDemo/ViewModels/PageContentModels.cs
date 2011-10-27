namespace CmsDemo.ViewModels
{
    using System;

    using CmsDemo.Domain;

    public class PageContentEditModel
    {
        public Uri Referrer { get; set; }

        public PageContent Content { get; set; }
    }
}