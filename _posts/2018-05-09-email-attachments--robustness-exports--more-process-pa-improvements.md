---
title: 'Email Attachments & Robustness, Exports & More Process PA Improvements'
date: 2018-05-09 10:30:00 +1000
author: Process PA Team
layout: post
permalink: /ExecutiveMatters/creating-good-online-governance
categories:
  - Product Updates
---

Product updates are deployed frequently and available for all users next time you login. We have been hearing your great feedback and ideas. If there is something you want to see in Process PA, please [vote and add your ideas](https://wantoo.io/process-pa/ideas/){: target="_blank"}. If something is not working correctly, please let us know at [support@processpa.com](mailto:support@processpa.com).

# Email Attachment Options

As people have become more comfortable at the ease of organizing attachments to agenda in Process PA the resulting email attachment size has sometimes grown quite large. This has resulted in email bounce backs where inboxes reject large attachments. Now you have the ability in settings to control what attachments are sent. Be it the pdf Agenda or Minutes or Attachments.

![Email attachment settings](/content/posts/Email-attachments-settings.png "Email attachment settings")

## Download all attachments

To make things easier if the attachments aren't sent in the email you can now download the all the attachments in the organized zip file from the preview. You still have the ability to view or download individual attachments directly online.

## Combined PDF

You'll also notice above in the email attachments settings that we have an early preview (Beta) feature available to try. It combines the attached pdfs into the one pdf file. Currently there is no page numbers available on the combined document. We encourage you to try it out and send us feedback on how the layout of the document is resulting.

# Exports

Although we keep everything online and provide a signal point-of-truth the ability to pull down data for other tasks is a workflow we want to support more. We have now added the ability to export your Member register and Motions register. These are exported as a Comma Separated Values (cvs) file which is easily viewable in Excel.

![Export members screen](/content/posts/export-members.png "Export members")

![Exported members in Excel](/content/posts/exported-members-csv.png "Exported members in Excel")

![Export Motions screen](/content/posts/export-motions.png "Export Motions")

In the future we want to include further exports (Actions, Minutes) to make it easier to pass information to your auditor.

# Email Robustness

We have been working with some customers to ensure solid, consistent and timely delivery of emails. Some of this has included attachments being too large which has been addressed above.

As email security is tightening across the industry we've had to change the way we address emails. We used to send the email "on behalf" of the selected email sending user. This method is becoming less reliable as it is the same method spammers try to trick people that an email is coming from someone else.

What we have done is made all emails come from "notifications@processpa.com". The emails have a DKIM signature to help show it is a trusted email to email clients decreasing the chances of being sent to the Junk Mail box.

The Email Sender in settings has been updated to Reply-To email. This means that if a person clicks reply to an email send from Process PA, the resulting reply email will be addressed to the user you specify maintaining that smooth workflow within email.

# Editor Updates

We want to make taking notes for your minutes the best experience possible. The editor has been updated to make things a bit smoother and give you more control.

![Updated Editor screen](/content/posts/editor-updates.png "Updated Editor")

Firstly in red above, table editor controls. When you click into a cell of a table now, you are able to add, remove and delete rows and columns or the whole table.

Secondly in yellow, sub item numbering. If you click on number list when you press tab you will get a sub point number and shift-tab will return it to the parent list.

Thirdly in orange, undo & redo buttons. Although ctrl-z and ctrl-y have always worked we've made the buttons available for ease of use. If the buttons aren't visible make sure your browser is sized wide enough.

Fourthly in blue, html editor. Being a web application all the text that is writing is marked up in the language of the web, html. Using this button you can see the html that is generated from the text that you have. Be aware this is for technical users, but give you ultimate control over your produced notes.

# What's next

We've got lots of plans and lots of feedback and are busy are work delivering them for you.