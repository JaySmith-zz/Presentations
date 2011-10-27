using System;
using System.Web.UI;
using BlogDemo.Web.DataAccess;

namespace BlogDemo.Web
{
    public partial class ViewPost : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string postId = Request["postId"] ?? "3";

            var p = PostRepository.GetPostById(postId);

            litTitle.Text = p.Title;
            litPostDate.Text = p.PostDate.ToString();
            litAuthor.Text = p.Author.Name;
            litContent.Text = p.PostContent;
            lnkEdit.NavigateUrl = "EditPost.aspx?postID=" + p.PostID;
        }
    }
}