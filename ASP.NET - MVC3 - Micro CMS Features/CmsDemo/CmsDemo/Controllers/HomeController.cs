namespace CmsDemo.Controllers
{
    using System.Linq;
    using System.Web.Mvc;

    using CmsDemo.Data;
    using CmsDemo.Domain;
    using CmsDemo.ViewModels;

    [HandleError]
    public class HomeController : Controller
    {

        private readonly IRepository repository = new EntityFrameworkRepository();
    
        public ActionResult Index()
        {
            var model = new HomeIndexModel();
            model.Page = repository.Get<Page>(x => x.PageId == (int)ReservedPage.Home);
            model.TopContent.AddRange(repository.Find<PageContent>(x => x.Id == 1).ToList());

            repository.Dispose();

            return View(model);
        }

        public ActionResult About()
        {
            var model = new HomeAboutModel();
            model.Page = repository.Get<Page>(x => x.PageId == (int) ReservedPage.About);

            return View(model);
        }
    }
}
