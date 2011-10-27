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
                    post.Title = "Starting the Ft. Smith .NET User Group: Michael Paladino";
                    post.PostContent =
                        @"In this the first full episode of User Group Radio I had the chance to catch up with &lt;a href=""http://www.mpaladino.com/"" target=""_blank""&gt;Michael Paladino&lt;/a&gt;, on of the founders of the &lt;a href=""http://fsdnug.org/"" target=""_blank""&gt;Ft. Smith .NET User Group&lt;/a&gt; in Ft. Smith, Arkansas.";
                    post.PostDate = DateTime.Now;

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