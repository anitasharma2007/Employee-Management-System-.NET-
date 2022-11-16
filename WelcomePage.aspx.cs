using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Task1
{
    public partial class WelcomePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie cookie = Request.Cookies["store"];
            if (Session["f1"].ToString() != string.Empty && Session["l1"].ToString() != string.Empty && cookie != null)
            {
                textbox1.Text = Session["f1"].ToString() + Session["l1"].ToString() + cookie["emailCookie"].ToString();
            }
            else
            {
                Response.Redirect("LoginPage.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("EditDetails.aspx");
        }
    }
}