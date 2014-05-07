using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class sign_in : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void btnLogout_Click(object sender, EventArgs e)
    {
        FormsAuthentication.SignOut();
        Roles.DeleteCookie();
        Session.Clear();
        Session.Abandon();
        Response.Redirect("~/default.aspx");
    }
    protected void LoginButton_Click(object sender, EventArgs e)
    {
        
    }
    protected void ContinueButton_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/default.aspx");
    }
}