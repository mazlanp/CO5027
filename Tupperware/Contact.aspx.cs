using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Tupperware
{
    public partial class Contact : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSendEmail_Click(object sender, EventArgs e)
        {
            SmtpClient smtpClient = new SmtpClient();
            smtpClient.EnableSsl = true;
            smtpClient.UseDefaultCredentials = false;
            smtpClient.Host = "smtp.gmail.com";
            smtpClient.Port = 587;

            System.Net.NetworkCredential credentials =
                new System.Net.NetworkCredential("tupperwear.green@gmail.com", "Tupperwear");

            smtpClient.Credentials = credentials;

            MailMessage msg = new MailMessage("tupperwear.green@gmail.com", txtEmail.Text);
            msg.Subject = "Name: " + txtName.Text + " Subject: " + txtSubject.Text;
            msg.Body = txtEmail.Text + "    " + txtMsg.Text;
            smtpClient.Send(msg);

            try
            {
                smtpClient.Send(msg);
                litResult.Text =
                    "<p>Success, mail sent using SMTP with secure connection and credentials</p>";
            }
            catch (Exception ex)
            {
                litResult.Text =
                    "<p>Send failed: " + ex.Message + ":" + ex.InnerException + "</p>";
            }
        }
    }
}