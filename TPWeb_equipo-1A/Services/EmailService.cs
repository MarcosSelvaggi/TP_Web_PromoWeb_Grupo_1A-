using System;
using System.Configuration;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Text;
using System.Threading.Tasks;

namespace Services
{
    public class EmailService
    {
        private MailMessage email;
        private SmtpClient server;

        public EmailService() 
        {
            server = new SmtpClient();
            string user = ConfigurationManager.AppSettings["EmailUsername"];
            string pass = ConfigurationManager.AppSettings["EmailPassword"];
            server.Credentials = new NetworkCredential(user, pass);
            server.EnableSsl = true;
            server.Port = 587;
            server.Host = "smtp.gmail.com";
        }

        public void correo(string emailDestino)
        {
            email = new MailMessage();
            email.From = new MailAddress("correoprogramaciontp@gmail.com");
            email.To.Add(emailDestino);
            email.Subject = "Canjeo Exitoso!!!";
            email.IsBodyHtml = true;
            email.Body = "<h>Su registro y premio fueron completamente exitosos!</h> <p>Siga comprando en nuestro establecimiento.</p>";
        }

        public void enviarEmail() 
        {
            try
            {
                server.Send(email);
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }
    }
}
