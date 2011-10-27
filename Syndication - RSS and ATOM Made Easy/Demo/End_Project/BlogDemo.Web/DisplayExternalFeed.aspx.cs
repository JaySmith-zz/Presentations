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
            var feedUrl = "http://feeds.feedburner.com/NWNPodcast";

            XmlReader reader = XmlReader.Create(feedUrl);
            SyndicationFeed feed = SyndicationFeed.Load(reader);

            if (feed == null) 
                throw new ApplicationException("Error reading source feed");

            var items = (from f in feed.Items
                         select f).Take(10);

            listViewPosts.DataSource = items;
            listViewPosts.DataBind();
        }
    }
}