using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace TestProject
{
    using Core.Presenters;

    using TestProject.Mocks;

    [TestClass]
    public class RegistrationPresenterTest
    {
        [TestMethod]
        public void ViewRaisesTheInitializeEvent()
        {
            var view = new RegistrartionViewMock();
            var presenter = new RegistrationPresenter(view);

            view.RaiseInitialize();

            Assert.AreEqual(5, view.Age);
        }
        
        [TestMethod]
        public void ViewRaisesTheAttenceSaveEvent()
        {
            var view = new RegistrartionViewMock();
            var presenter = new RegistrationPresenter(view);

            view.RaiseRegisterUser();

            Assert.AreEqual(true, view.RegistrationSuccessful);
        }
    }
}
