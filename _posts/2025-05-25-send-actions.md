---
cta_hook: "Send actions to your team straight from the meeting. Try Process PA free for 30 days."
title: >-
  Send Outstanding Actions, Set Default Folder, Smart Document Search (Early Access) and More Process PA Improvements
date: 2025-05-25 22:00:00
author: Process PA Team
layout: post
permalink: /ExecutiveMatters/send-actions
categories:
  - Product Updates
---
We're constantly evolving Process PA based on your feedback and the changing needs of modern governance. This latest update introduces intelligent document search capabilities that understand context and meaning, alongside enhanced safeguards to protect your finalized meeting records. We've also streamlined workflows with new notification tools and improved the overall user experience across desktop and mobile devices.

### Enhancements

#### 📧 Send Outstanding Actions to Assignees
A new **Send** button has been added to the **Outstanding Actions** section, allowing users to quickly notify assignees of all open actions via email.
- **How it works**:  
  Clicking the **Send** button opens a confirmation modal with the following details:
  - **Title**: *Send Reminder*
  - **Message**: *Email assignees of all Open actions.*
  - **Buttons**: **Send** | **Cancel**

#### 📎 Set a Default Folder for Agenda Item Attachments
We’ve made it easier to manage attachments on agenda items by allowing users to set a **default upload folder**. Here’s what’s new:
- When clicking the **Attach** button on an agenda item, a **preset folder** can now be automatically selected as the upload destination.
- A new **“Default”** option has been added:
  - In the **folder menu**
  - On the **toolbar**
- Once a folder is set as default:
  - It will be tagged with a **star icon**

#### 📁 Updated Default Sorting for Documents
The default sort order for documents—both in the **Documents view** and the **Attach dialog**—has been updated to show the **most recently uploaded files at the top**. This makes it quicker and easier to access the latest documents without needing to manually sort by clicking the column headers.

#### 📄 Pagination Added to Documents
To improve performance and usability, we’ve introduced **pagination** to the **Documents** section. This update ensures:
- Faster load times, especially for large document libraries  
- Easier navigation through documents  
- A more responsive and streamlined user experience

#### 📥 Download Agenda for Completed Meetings
You can now **download the agenda** for meetings that have already been completed. This makes it easier to reference or share the original board papers alongside the minutes and attachments.

#### 📝 Rich Text Controls Added to Action and Motion Notes
We’ve expanded the formatting capabilities in **Action** and **Motion** notes with new rich text controls:
- **Table Insertion**: Easily organize content using tables.
- **Font Size Control**: Adjust text size for better emphasis and readability.

#### 🛡 Improved Safeguards Against Accidental Edits to Finalized Minutes
To ensure the integrity of finalized meeting records, we’ve introduced several changes that prevent accidental edits:
- **Date Link Behavior Updated**:  
  On the **Minutes card**, clicking the date now redirects to the **preview** of the minutes instead of the meeting page, reducing the risk of unintended edits.
- **Confirmation Dialog for Approved Minutes**:  
  When opening minutes that have an approved *Confirm Minutes* motion, users are now presented with a dialog offering three clear options:
  - **Sign** – Launches the signing workflow
  - **View** – Opens the minutes in preview mode
  - **Edit** – Opens the meeting in edit mode (only if permitted)
- **Signed Minutes Are Fully Locked**:  
  Once minutes are signed, they are completely locked from any further editing, ensuring compliance and preserving the official record.

#### 📱 Improved Mobile Layout for Homepage Image
We’ve adjusted the layout of the homepage image to be more responsive on mobile devices. This ensures a cleaner, more user-friendly experience across all screen sizes, especially on smaller displays.

#### 🔍 Smarter Document Search – Now in Early Access
We’ve introduced a new way to search through your documents that understands the meaning behind your words—not just exact matches. This makes it easier to find what you’re looking for, even if you don’t remember the exact wording.
- You can now search using natural phrases or questions.
- Results are more accurate and relevant, helping you find the right information faster.

  🚀 **Early Access**:  
  This feature is being rolled out gradually. If you’d like to try it early and share your feedback, please [**contact us**](mailto:support@processpa.com?subject=Document%20Search%20Early%20Access%20Request) to join the early access group.

#### Bug Fixes

##### 🐞 Fixed: PDF Render Size Too Small
We addressed a display issue where rendered PDFs appeared too small, making them difficult to read. PDFs now render at an appropriate size for better readability and usability.

##### 🐞 Fixed: Agenda Items Could Be Reordered on Signed Minutes
We’ve fixed an issue where agenda items could still be reordered on **signed minutes**, which should be locked from any editing. Signed minutes are now fully locked, preserving their integrity and ensuring compliance with meeting documentation standards.

##### 🐞 Fixed: “Request Attendance” Button Enabled for Closed Meetings
The **Request Attendance** button was incorrectly enabled for meetings that had already been closed. This has been corrected—users will now only see the button for open meetings where attendance can still be requested.

##### 🐞 Fixed: Closed Meetings Could Be Re-Scheduled
Previously, users were able to access the **Re-schedule** link for closed meetings via the meeting page. This link is now correctly disabled for closed meetings, ensuring that only open meetings can be rescheduled.

##### 🐞 Fixed: Sub-Committee Creation Failed to Generate Templates
An issue was identified where creating a **Sub-Committee** failed to generate the associated templates. This has now been resolved—template creation is triggered correctly when a new sub-committee is set up.

##### 🐞 Fixed: Some User Seconders Not Rendered in Minutes
We’ve fixed a bug where certain **seconders** were not being displayed in the finalized meeting minutes. All valid seconders are now correctly rendered, ensuring accurate and complete meeting documentation.
