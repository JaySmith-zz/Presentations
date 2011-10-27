using System.IO;
using System.ServiceModel.Syndication;
using System.Web;
using System.Web.Services;
using System.Xml;

namespace BlogDemo.Web
{
    /// <summary>
    /// Summary description for $codebehindclassname$
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    public class FeedHandler : IHttpHandler
    {
        #region IHttpHandler Members

        public void ProcessRequest(HttpContext context)
        {
            // FeedHandler
            SyndicationFeed feed = SyndicationService.GetFeed();

            var output = new StringWriter();
            var writer = new XmlTextWriter(output);

            if (context.Request["t"] == "Rss")
                new Rss20FeedFormatter(feed).WriteTo(writer);
            else
                new Atom10FeedFormatter(feed).WriteTo(writer);

            context.Response.ContentType = "application/rss_xml";
            context.Response.Write(output.ToString());
        }

        public bool IsReusable
        {
            get { return false; }
        }

        #endregion
    }
}