using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Net.Mail;
using System.Text;


public partial class Contact : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (!IsPostBack)
            {
                tbName.Focus();
            }
        }
        catch (Exception ex)
        {

        }
    }

    protected void Submit(object sender, EventArgs e)
    {
        bool success = false;

        try
        {
            if (Page.IsValid)
            {
                StringBuilder sb = new StringBuilder();

                sb.AppendLine("<p>");
                sb.Append("<strong>Name:</strong> ");
                sb.AppendLine(tbName.Text);
                sb.AppendLine("<br />");
                sb.Append("<strong>Website:</strong> ");
                sb.AppendLine(tbURL.Text);
                sb.AppendLine("<br />");
                sb.Append("<strong>Email:</strong> ");
                sb.AppendLine(tbEmail.Text);
                sb.AppendLine("<br />");
                sb.Append("<strong>Message:</strong> ");
                sb.AppendLine(tbInfo.Text);
                sb.AppendLine("<br />");
                sb.Append("<p>Form Submitted at ");
                sb.Append(DateTime.Now.ToLongTimeString());
                sb.Append(" on ");
                sb.Append(DateTime.Now.ToLongDateString());
                sb.AppendLine(".</p>");

                try
                {
                    SmtpClient client = new SmtpClient();
                    client.EnableSsl = true;
                    using (MailMessage mm = new MailMessage("webmaster@boyga.com", "julianivey@boyga.com", "Boyga Contact Message", sb.ToString()))
                    {
                        mm.IsBodyHtml = true;
                        client.Send(mm);
                        success = true;
                    }
                }
                catch (Exception ex)
                {

                }

                if (success)
                {
                    Response.Redirect("/ThankYou.aspx");
                }
                else
                {
                    ErrorMsg.InnerText = "**An error occurred when submitting your form. Please try again.**";
                    ErrorMsg.Visible = true;
                }

            }
            else
            {
                ValidationErrors.Visible = true;
            }
        }
        catch (Exception ex)
        {
            ErrorMsg.InnerText = "**An error occurred when submitting your form. Please try again.**";
            ErrorMsg.Visible = true;
        }
    }
}