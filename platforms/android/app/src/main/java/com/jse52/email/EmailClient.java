package com.jse52.email;

import android.content.Context;
import android.util.Log;
import android.widget.Toast;

import java.io.IOException;


public class EmailClient {

    Context cxt;
    String recipient , name;
    final static String email_sender = "habourang@gmail.com";

//    public EmailClient(Context context)
//    {
//        cxt = context;
//    }
//
    public static void sendEmail(Context cxt, String recipient, String name) throws IOException {
//        this.recipient = recipient;
//        this.name = name;

        // send email
        new Thread(new Runnable() {
            public void run() {
                try {
                    EmailSender sender = new EmailSender(cxt);
                    String body = "Hello, \n\n" +
                            "You are getting this email because you are registered to receive alerts for " +
                            name + ".";
                    sender.sendMail("Test App: Health Notification", body,
                            email_sender, recipient);
                    Log.d("Email" , "Sent");
                } catch (Exception e) {

                    Toast.makeText(cxt,"Error", Toast.LENGTH_LONG).show();

                }
            }

        }).start();


    }
}
