using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail ;
using System.Net;
public partial class Enquiry : System.Web.UI.Page
{
    string message = "";
    protected void Page_Load(object sender, EventArgs e)
    {

        if(!Page.IsPostBack)
        {
            Subject.Text = Request["Destination"];
            PanelMessage.Visible = false;    

        }
        if (Request["send"] != null)
        {
            PanelForm.Visible = false;
            PanelMessage.Visible = true;
            message = "<table border=0><tr><td>Enquiry from website</td></tr>";
            message = message + "<tr><td><b>Name</b></td></tr><tr><td>" + Request["Name"] + "</td></tr>";
            message = message + "<tr><td><b>Email</b></td></tr><tr><td>" + Request["Email"] + "</td></tr>";
            message = message + "<tr><td><b>Subject</b></td></tr><tr><td>" + Request["Subject"] + "</td></tr>";
            message = message + "<tr><td><b>Mobile</b></td></tr><tr><td>" + Request["Mobile"] + "</td></tr>";
            message = message + "<tr><td><b>Message</b></td></tr><tr><td>" + Request["Message"] + "</td></tr>";
            message = message + "</table>";
            SendFinalEmail(message);
        }
//string result=SendMail("baljeet.matta@gmail.com", "baljeet.matta@gmail.com", "", "Booking from site", message);
//if (result.Equals("Successful"))
//    Response.Redirect("Thanks.htm");
//else
//    Response.Write(result);
    }
void SendFinalEmail(string message)
    {
        MailMessage mail = new MailMessage();

        //set the addresses
        mail.From = new MailAddress("mail@talentsanimation.com"); //IMPORTANT: This must be same as your smtp authentication address.
        mail.To.Add("support@airlineticketsfare.com");

        //set the content
        mail.Subject = "Enquiry from site";
        //mail.Body = "This is from system.net.mail using C sharp with smtp authentication.";
        mail.Body = message;
        mail.IsBodyHtml = true;


        //send the message
        System.Net.Mail.SmtpClient smtp = new System.Net.Mail.SmtpClient("cmx3.my-hosting-panel.com");

        //IMPORANT:  Your smtp login email MUST be same as your FROM address.
        NetworkCredential Credentials = new NetworkCredential("mail@talentsanimation.com", "P@ssword4001#P");
        smtp.Credentials = Credentials;
        smtp.Send(mail);
       // Response.Redirect("Thanks.aspx");
        lblMessage.Text = "Mail Sent";

    }
    void SendEmail(string message)
    {
        string eMailBody = "<html><body> " + message + "</body><html>";
       
   


        try
        {


            System.Net.Mail.SmtpClient cl = new System.Net.Mail.SmtpClient("cmx3.my-hosting-panel.com");

           // cl.Host = "mail.talents.co.in";
            cl.Port = 2525;
          //  cl.EnableSsl = true;


            System.Net.NetworkCredential net = new System.Net.NetworkCredential("info@glowbusagrovet.com", "Hire@4001");
            cl.Credentials = net;
            cl.UseDefaultCredentials = true;
            //austinjumpingcastles@gmail.com
            System.Net.Mail.MailMessage mg1 = new System.Net.Mail.MailMessage("info@glowbusagrovet.com", "info@glowbusagrovet.com", "Enquiry from site", eMailBody);
            mg1.IsBodyHtml = true;
            cl.Send(mg1); 

            Response.Redirect("http://www.glowbusagrovet.com/Thanks.htm");

           // System.Net.Mail.SmtpClient cl = new System.Net.Mail.SmtpClient("mail.talents.co.in");
           
           // cl.Host = "mail.talents.co.in";
           // cl.Port = 25;


           //System.Net.NetworkCredential net = new System.Net.NetworkCredential("tasks@talents.co.in", "password123");
           // cl.Credentials = net;
           // cl.UseDefaultCredentials = true;
           // //austinjumpingcastles@gmail.com
           // System.Net.Mail.MailMessage mg1 = new System.Net.Mail.MailMessage("tasks@talents.co.in", "austinjumpingcastles@gmail.com", "Booking from site", eMailBody);
           // mg1.IsBodyHtml = true;
           // cl.Send(mg1); Response.Write("Done1");

           // Response.Redirect("http://www.austinjumpingcastles.com.au/ThanksBooking.htm");
            
        }
        catch (Exception ex)
        {
           Response.Write("Erroe1:"+ex.InnerException);
            try
        {
           

            System.Net.Mail.SmtpClient cl = new System.Net.Mail.SmtpClient();

            cl.Host = "cmx3.my-hosting-panel.com";
            cl.Port = 25;
            cl.UseDefaultCredentials = true;


            System.Net.Mail.MailMessage mg1 = new System.Net.Mail.MailMessage("info@glowbusagrovet.com", "info@glowbusagrovet.com", "Enquiry from Website", eMailBody);
            mg1.IsBodyHtml = true;
            cl.Send(mg1); Response.Write("Done2");
            Response.Redirect("http://www.glowbusagrovet.com/Thanks.htm");
            
        }
        catch (Exception ex1)
        { 
            Response.Write("Error2:"+ex1.InnerException);

        }
           

        }
    }

}

