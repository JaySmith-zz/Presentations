using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Objects.DataClasses;
using System.Linq;
using System.ServiceModel.Syndication;
using CmsDemo.Data;

namespace CmsDemo.Services
{
    public class SyndicationService
    {
        public SyndicationFeed GetFeed()
        {
            var feed = new SyndicationFeed
            {
                //Title = new TextSyndicationContent(Settings.Instance.SiteName),
                //Description = new TextSyndicationContent(Settings.Instance.SiteSlogan),
                //ImageUrl = new Uri(Settings.Instance.SiteLogoUri),

                Title = new TextSyndicationContent("My Syndication Feed"),
                //ImageUrl = new Uri("http://tysondevcon.com/2010/Content/Images/logo.jpg"),
                
                Items = GetSyndicationItems()
            };

            return feed;
        }

        private static IEnumerable<SyndicationItem> GetSyndicationItems()
        {
            var repository = new EntityFrameworkRepository();

            var posts = repository.Find<Post>(x => x.DateCreated <= DateTime.Now)
                .OrderByDescending(x => x.DateCreated);

            return posts.Select(post => ConvertPostToSyndicationItem(post)).ToList();
        }

        private static SyndicationItem ConvertPostToSyndicationItem(Post post)
        {
            var item = new SyndicationItem();

            item.Id = item.Id;
            item.Title = new TextSyndicationContent(post.Title);
            item.Content = new TextSyndicationContent(post.Content);
            item.PublishDate = post.DateCreated;

            return item;
        }
    }

    public class Post : IEntityWithKey
    {
        public DateTime DateCreated;
        public string Title;
        public string Content;
        public List<string> Tags;
        public int Id;

        public EntityKey EntityKey { get; set; }

        public List<Category> Categories { get; set; }

        public string Author { get; set; }

        public bool IsPublished { get; set; }

        public string Slug { get; set; }

        public string Description { get; set; }
    }

    public class Category : IEntityWithKey
    {
        public Category(string trim, string empty)
        {
            throw new NotImplementedException();
        }

        public string Title { get; set; }
        public object Id { get; set; }
        public EntityKey EntityKey { get; set; }

    }
}