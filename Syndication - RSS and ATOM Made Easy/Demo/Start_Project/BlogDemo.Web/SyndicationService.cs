using System;
using System.Collections.Generic;
using System.ServiceModel.Syndication;
using BlogDemo.Web.DataAccess;

namespace BlogDemo.Web
{
    public class SyndicationService
    {
        // Get Feed
        public static SyndicationFeed GetFeed()
        {
            var feed = new SyndicationFeed
             {
                 Title = new TextSyndicationContent("My New RSS Feed"),
                 Description = new TextSyndicationContent("Using WCF Syndication to create a feed"),
                 ImageUrl = new Uri("http://example.com/images/blog.png"),
                 Items = GetSyndicationItems(),
             };

            return feed;
        }

        // Get Syndication Items
        private static IList<SyndicationItem> GetSyndicationItems()
        {
            IList<Post> posts = PostRepository.GetAllPosts();

            var items = new List<SyndicationItem>();
            foreach (var post in posts)
                items.Add(GetSyndicationItemFromPost(post));

            return items;
        }

        // Get Syndication Item From Post
        private static SyndicationItem GetSyndicationItemFromPost(Post post)
        {
            var item = new SyndicationItem
                        {
                            Id = post.PostID.ToString(),
                            Title = new TextSyndicationContent(post.Title),
                            Content = new TextSyndicationContent(post.PostContent),
                        };

            item.Authors.Add(new SyndicationPerson(post.Author.Name, post.Author.Name, null));

            return item;
        }
    }
}