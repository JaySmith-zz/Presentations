using System;
using System.Collections.Generic;
using System.Linq;

namespace BlogDemo.Web.DataAccess
{
    public class PostRepository
    {
        public static IList<Post> GetAllPosts()
        {
            if (Properties.Settings.Default.UseDb)
            {
                var db = new BlogDemoDataContext();
                IQueryable<Post> r = from p in db.Posts
                                     select p;
                return r.ToList();
            }
            else
            {
                IList<Post> posts = new List<Post>();

                for (int i = 0; i < 10; i++)
                {
                    var post = new Post();
                    post.PostID = i;
                    post.Title = "Tulsa & TechFest Rocks";
                    post.PostContent = @"Tulsa & TechFest Awesome!";
                    post.PostDate = DateTime.Now;

                    post.Author = new Author { Name = "Post Author", Email = "author@example.com" };

                    posts.Add(post);
                }

                return posts;
            }
        }

        public static Post GetPostById(string id)
        {
            if (Properties.Settings.Default.UseDb)
            {
                var db = new BlogDemoDataContext();

                Post r = (from p in db.Posts
                          where p.PostID == int.Parse(id)
                          select p).Single();

                return r;
            }
            else
            {
                int postId = int.Parse(id);

                var posts = GetAllPosts();

                var item = (from p in posts
                            where p.PostID == postId
                            select p).Single();

                return item;
            }
        }
    }
}