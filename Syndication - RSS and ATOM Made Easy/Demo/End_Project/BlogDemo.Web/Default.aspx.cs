using System;
using System.Web.UI;
using BlogDemo.Web.DataAccess;

namespace BlogDemo.Web
{
    public partial class Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) return;

            lvwPosts.DataSource = PostRepository.GetAllPosts();
            lvwPosts.DataBind();
        }
    }
}