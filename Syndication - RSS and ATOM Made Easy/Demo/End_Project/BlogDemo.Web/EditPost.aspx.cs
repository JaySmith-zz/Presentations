using System;
using System.Web.UI;
using BlogDemo.Web.DataAccess;

namespace BlogDemo.Web
{
    public partial class EditPost : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) return;

            string postId = Request["postId"] ?? "3";

            var p = PostRepository.GetPostById(postId);

            txtTitle.Text = p.Title;
            txtContent.Text = p.PostContent;
            txtPostDate.Text = p.PostDate.ToString();
            txtAuthor.Text = p.Author.Name;

        }
    }
}