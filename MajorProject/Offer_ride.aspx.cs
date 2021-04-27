using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MajorProject
{
	public partial class Offer_ride : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			if (Session["FirstName"] != null)
			{
				welcome.Text = "Hello" + "    " + Session["FirstName"] +" "+ "Offer Your Here";
			}
		}
	}
}