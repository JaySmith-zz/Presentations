using System;
using System.Linq;
using System.ServiceModel.Syndication;
using System.Web.UI;
using System.Xml;

namespace BlogDemo.Web
{
    public partial class DisplayExternalFeed : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //1:1 Page Load
            //var feedUrl = "http://feeds.feedburner.com/JaySmith";
            var feedUrl = "http://localhost:3040/FeedHandler.ashx?t=Rss";

            XmlReader reader = XmlReader.Create(feedUrl);
            
            SyndicationFeed feed = SyndicationFeed.Load(reader);

            var items = (from f in feed.Items
                         select f).Take(10);

            listViewPosts.DataSource = items;
            listViewPosts.DataBind();
        }
    }
}