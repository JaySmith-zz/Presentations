using System;
using CmsDemo.Domain;

namespace CmsDemo.ViewModels
{
    public class PageEditModel
    {
        public Uri Referrer { get; set; }
        public Page Page { get; set; }
    }
}