﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace ContosoUniversity
{
    public partial class Courses : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CoursesEntityDataSource_Updated(object sender, EntityDataSourceChangedEventArgs e)
        {
            CheckForOptimisticConcurrencyException(e, "update");
        }

        protected void CoursesEntityDataSource_Deleted(object sender, EntityDataSourceChangedEventArgs e)
        {
            CheckForOptimisticConcurrencyException(e, "delete");
        }

        private void CheckForOptimisticConcurrencyException(EntityDataSourceChangedEventArgs e, string function)
        {
            if (e.Exception != null && e.Exception is OptimisticConcurrencyException)
            {
                var concurrencyExceptionValidator = new CustomValidator();
                concurrencyExceptionValidator.IsValid = false;
                concurrencyExceptionValidator.ErrorMessage =
                    "The record you attempted to edit or delete was modified by another " +
                    "user after you got the original value. The edit or delete operation was canceled " +
                    "and the other user's values have been displayed so you can " +
                    "determine whether you still want to edit or delete this record.";
                Page.Validators.Add(concurrencyExceptionValidator);
                e.ExceptionHandled = true;
            }
        }
    }
}