using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class contact : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSend_Click(object sender, EventArgs e)
    {
        //create an smtp client
        SmtpClient client = new SmtpClient();

        //setup client to use gmail
        client.Host = "smtp.gmail.com";
        client.Port = 587;
        client.EnableSsl = true;

        //create username & password credential set
        System.Net.NetworkCredential userpass = new System.Net.NetworkCredential();
        userpass.UserName = "sisolutions93@gmail.com";
        userpass.Password = "computercomputer";

        //set the smtp client to use the username and password
        client.Credentials = userpass;

        //sender and reciever, body and subject
        MailMessage msg = new MailMessage("sisolutions93@gmail.com", "sisolutions93@gmail.com");
        msg.Body = txtContact.Text;
        msg.Subject = "Si Solutions Submissions";

        client.Send(msg);

        //for confirmation of sent email
        txtName.Text = " ";
        txtEmail.Text = " ";
        txtSubject.Text = " ";
        txtContact.Text = " ";
        pnlCompose.Visible = false;
        pnlSent.Visible = true;
    }
}