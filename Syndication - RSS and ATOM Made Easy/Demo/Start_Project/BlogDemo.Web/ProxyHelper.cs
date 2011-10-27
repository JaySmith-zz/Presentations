using System.IO;
using System.Net;
using System.Xml;
using BlogDemo.Web.Properties;

namespace BlogDemo.Web
{
    public class ProxyHelper
    {
        public static XmlTextReader GetProxyEnabledXmlTextReader(string url)
        {
            var proxy = WebRequest.GetSystemWebProxy();

            // Works in a release build
            //proxy.Credentials = CredentialCache.DefaultNetworkCredentials; 

            // Works in debug mode
            proxy.Credentials = new NetworkCredential(Settings.Default.ProxyUser, Settings.Default.ProxyPassword);

            var request = WebRequest.Create(url);
            request.Proxy = proxy;

            var webResponse = (HttpWebResponse)request.GetResponse();
            var streamReader = new StreamReader(webResponse.GetResponseStream());
            var xmlReader = new XmlTextReader(streamReader);

            return xmlReader;
        }
    }
}