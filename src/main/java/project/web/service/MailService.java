package project.web.service;

import org.springframework.beans.factory.annotation.Autowired;

import javax.activation.DataHandler;
import javax.activation.DataSource;
import javax.activation.FileDataSource;
import javax.mail.*;
import javax.mail.internet.*;
import javax.servlet.ServletContext;
import java.io.*;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Properties;

/**
 * Created by angel_cuenca on 6/15/2016.
 */


public class MailService{
    private Session session;
    private final String username;
    private final String password;

    @Autowired
    ServletContext servletContext;

    public MailService(String username, String password) {
        this.username = username;
        this.password = password;
        init();
    }

    public final void init() {
        Properties props = new Properties();
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");
        props.put("mail.smtp.host", "smtp.gmail.com");
        props.put("mail.smtp.ssl.trust", "smtp.gmail.com");
        props.put("mail.smtp.port", "587");

        session = Session.getInstance(props, new Authenticator() {
            @Override
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(MailService.this.username, MailService.this.password);
            }
        });
    }

    public boolean sendEmail(String[] recipients, String[] attachments, String subject, String body) throws IOException, MessagingException {
            /**
              Send email service
             **/
            boolean mailStatus;
            MimeMessage message = new MimeMessage(session);
            message.setFrom(new InternetAddress("name.project@sanmina.com", "name.project@sanmina.com"));
            message.setReplyTo(InternetAddress.parse("noreply@project.com", false));

            Address[] to = new Address[recipients.length];
            for (int i=0; i<recipients.length; i++) {
                to[i] = new InternetAddress(recipients[i]);
            }
            message.setRecipients(Message.RecipientType.TO, to);
            message.setSubject(subject);

            /**
             Multi part message email
             **/

            Multipart multipart = new MimeMultipart();

            //Body
            MimeBodyPart htmlPart = new MimeBodyPart();

            //Replace content from html
            Path currentRelativePath = Paths.get("");
            String path = currentRelativePath.toAbsolutePath().toString();
            String content = new String(Files.readAllBytes(Paths.get(path + "/src/main/webapp/WEB-INF/pages/email_templates/reminder.html")), "UTF-8");

            String text = content;
            text = text.replaceAll("@name@", "Oscar Ahumada");
            text = text.replaceAll("@url@", "www.youtube.com");

            htmlPart.setContent(text, "text/html; charset=utf-8");
            multipart.addBodyPart(htmlPart);

            //Add attachments
            if(attachments != null && attachments.length > 0) {
                for (String str : attachments) {
                    MimeBodyPart messageBodyPart = new MimeBodyPart();
                    DataSource source = new FileDataSource(str);
                    messageBodyPart.setDataHandler(new DataHandler(source));
                    messageBodyPart.setFileName(source.getName());
                    multipart.addBodyPart(messageBodyPart);
                }
            }
            message.setContent(multipart);

            Transport.send(message);
            mailStatus = true;

            return mailStatus;
    }

    public void sendNotifications() {
        Calendar cal = Calendar.getInstance();
        SimpleDateFormat sdf = new SimpleDateFormat("HH:mm:ss");

        //Implement if attachments are required
        String[] attachFiles = new String[0];

        String[] recipientsList = new String[1];
        recipientsList[0] = "angel.cuenca@sanmina.com";

        String context = "Ignorame pero aun asi te dire la hora: "+sdf.format(cal.getTime());
        try {
            sendEmail(recipientsList, attachFiles, "Survey Engine Notifications", context);
        } catch ( IOException | MessagingException e) {
            e.printStackTrace();
        }
    }


}