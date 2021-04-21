using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MajorProject
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void reg_show_Click(object sender, EventArgs e)
        {
            Response.Redirect("Reg_page.aspx");
        }

        protected void login_show_Click(object sender, EventArgs e)
        {
            Response.Redirect("login_page.aspx");

        }
    }
}