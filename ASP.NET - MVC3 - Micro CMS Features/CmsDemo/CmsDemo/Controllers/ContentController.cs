using System.Web.Mvc;
using CmsDemo.Data;
using CmsDemo.Domain;
using CmsDemo.ViewModels;

namespace CmsDemo.Controllers
{
    public class ContentController : Controller
    {
        private IRepository repository = new EntityFrameworkRepository();

        public ActionResult Edit(int id)
        {
            var model = new PageContentEditModel();
            model.Content = repository.Get<PageContent>(x => x.Id == id);
            model.Referrer = Request.UrlReferrer;

            repository.Dispose();

            return View(model);
        }

        [HttpPost]
        [ValidateInput(false)]
        public ActionResult Edit(PageContentEditModel model)
        {
            var pageContent = repository.Get<PageContent>(x => x.Id == model.Content.Id);

            pageContent.Title = model.Content.Title;
            pageContent.Content = model.Content.Content;

            repository.Save(pageContent);

            repository.Dispose();

            return Redirect(model.Referrer.AbsoluteUri);
        }
    }
}