---
title: Security
layout: markdown-page
---

### Process PA is committed to implementing proven best practices for creating secure applications

Process PA is hosted on Microsoft’s world-class cloud-hosting platform Azure. Its cloud-based technology is used throughout our development process to ensure security through data access, in transmission and in storage while employing data loss protection methods.

#### Data access

Access to databases and file storage is only accessible to internal Azure services and an explicit white list of computers for support and management. Access control levels are set to explicit for authorized management users. Any other attempts to access the data from different computers or users is blocked. Firewall rules are used by both the server and the database to reject connection attempts from IP addresses that have not been explicitly whitelisted.

End users have access to their own data at anytime through the web application. 

#### Data in transmission

All connections to Web Application and the Database require encryption (SSL) at all times while data is &#8220;in transit&#8221; to and from the web application or database. [Transport-level encryption](https://azure.microsoft.com/en-us/documentation/articles/storage-security-guide/#encryption-in-transit), HTTPS, which allows data to be transferred in an encrypted form known as Secure Sockets Layers (SSL), is employed for all data transmissions.

#### Data in storage

Customer data is stored in a database that employs data encryption to help protect against the threat of malicious activity by performing real-time encryption and decryption of the database, associated backups, and transaction log files at rest. See <a href="https://msdn.microsoft.com/en-au/library/bb934049" target="_blank">Transparent Data Encryption</a> for more information. Transparent Data Encryption protects your data and helps meet compliance requirements by encrypting your database, associated backups, and transaction log files at rest.

#### Data loss protection

The data is on continuous backups and distributed across multiple servers and data centers to prevent loss in disaster scenarios. 

#### More Information

To read more about Microsoft Azure Security please visit the <a href="https://www.microsoft.com/en-us/trustcenter/Security/AzureSecurity" target="_blank">Microsoft Trust Center</a>.

Microsoft provides the widest range of certifications to comply with national, regional and industry-specific requirements governing the collection and use of individuals’ data. Read more at the <a href="https://www.microsoft.com/en-us/TrustCenter/Compliance/default.aspx" target="_blank">Microsoft Trust Center // Compliance</a>.
