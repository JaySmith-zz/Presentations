using System.Web.Mvc;
using CmsDemo.Data;
using CmsDemo.Domain;
using CmsDemo.ViewModels;

namespace CmsDemo.Controllers
{
    public class PageController : Controller
    {
        private IRepository repository = new EntityFrameworkRepository();

        public ActionResult Edit(int id)
        {
            var pageEditModel = new PageEditModel();
            pageEditModel.Page = repository.Get<Page>(x => x.PageId == id);
            pageEditModel.Referrer = Request.UrlReferrer;

            repository.Dispose();

            return View(pageEditModel);
        }

        [HttpPost]
        [ValidateInput(false)]
        public ActionResult Edit(PageEditModel pageModel)
        {
            var page = repository.Get<Page>(x => x.PageId == pageModel.Page.PageId);

            page.Title = pageModel.Page.Title;
            page.Content = pageModel.Page.Content;

            repository.Save(page);

            repository.Dispose();

            return Redirect(pageModel.Referrer.AbsoluteUri);
        }
    }
}