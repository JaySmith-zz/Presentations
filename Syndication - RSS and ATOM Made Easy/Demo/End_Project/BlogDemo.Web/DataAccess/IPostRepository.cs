using System.Collections.Generic;

namespace BlogDemo.Web.DataAccess
{
    internal interface IPostRepository
    {
        IList<Post> GetAllPosts();
        Post GetPostById(string id);
    }
}