Create database BugBounty
On
(
name = 'BugBounty',
filename = 'C:\Bounties_database\Bounties.mdf', 
size = 100MB,
filegrowth = 10%
)
log on
(
name = 'bugbounty_log',
filename = 'C:\Bounties_database\DATA\Bounties.ldf',
size = 25MB,
filegrowth = 10%
)
go

use BugBounty
go

Create table Vulnerabilities
(
id_Vulnerabilities nvarchar (100) primary key,
OwaspTop10 numeric,
Year numeric,
Description nvarchar (1000),
About nvarchar (100)
)
go

insert into Vulnerabilities 
(id_Vulnerabilities, OwaspTop10, Year, Description, About)
values
('Broken Access Control', '1', '2021', 'Websites have pages that are protected from regular visitors. For example, only the site`s admin user should be able to access a page to manage other users. If a website visitor can access protected pages they are not meant to see, then the access controls are broken.', 'https://owasp.org/Top10/A01_2021-Broken_Access_Control/'),
('Cryptographic Failures', '2', '2021', 'A cryptographic failure refers to any vulnerability arising from the misuse (or lack of use) of cryptographic algorithms for protecting sensitive information. Web applications require cryptography to provide confidentiality for their users at many levels.', 'https://owasp.org/Top10/A02_2021-Cryptographic_Failures/'),
('Injection', '3','2021', 'Injection flaws are very common in applications today. These flaws occur because the application interprets user-controlled input as commands or parameters. Injection attacks depend on what technologies are used and how these technologies interpret the input. Some common examples include: Sql Injection, Command Injection', 'https://owasp.org/Top10/A03_2021-Injection/'),
('Insecure Design', '4','2021', 'Insecure design refers to vulnerabilities which are inherent to the application`s architecture. They are not vulnerabilities regarding bad implementations or configurations, but the idea behind the whole application (or a part of it) is flawed from the start.', 'https://owasp.org/Top10/A04_2021-Insecure_Design/'),
('Security Misconfiguration', '5','2021', 'Poorly configured permissions on cloud services, like S3 buckets. Having unnecessary features enabled, like services, pages, accounts or privileges. Default accounts with unchanged passwords. Error messages that are overly detailed and allow attackers to find out more about the system. Not using HTTP security headers.', 'https://owasp.org/Top10/A05_2021-Security_Misconfiguration/'),
('Vulnerable and Outdated Components', '6', '2021', 'For example, let`s say that a company hasn`t updated their version of WordPress for a few years, and using a tool such as WPScan, you find that it`s version 4.6. Some quick research will reveal that WordPress 4.6 is vulnerable to an unauthenticated remote code execution(RCE) exploit, and even better, you can find an exploit already made on Exploit-DB.', 'https://owasp.org/Top10/A06_2021-Vulnerable_and_Outdated_Components/'),
('Identification and Authentication Failures', '7', '2021', 'Authentication and session management constitute core components of modern web applications. Authentication allows users to gain access to web applications by verifying their identities. The most common form of authentication is using a username and password mechanism.', 'https://owasp.org/Top10/A07_2021-Identification_and_Authentication_Failures/'),
('Software and Data Integrity Failures', '8', '2021', 'When talking about integrity, we refer to the capacity we have to ascertain that a piece of data remains unmodified. Integrity is essential in cybersecurity as we care about maintaining important data free from unwanted or malicious modifications.', 'https://owasp.org/Top10/A08_2021-Software_and_Data_Integrity_Failures/'),
('Security Logging & Monitoring Failures', '9', '2021', 'When web applications are set up, every action performed by the user should be logged. Logging is important because, in the event of an incident, the attacker`s activities can be traced. Once their actions are traced, their risk and impact can be determined. Without logging, there would be no way to tell what actions were performed by an attacker if they gain access to particular web applications.', 'https://owasp.org/Top10/A09_2021-Security_Logging_and_Monitoring_Failures/'),
('Server-Side Request Forgery (SSRF)', '10', '2021', 'This type of vulnerability occurs when an attacker can coerce a web application into sending requests on their behalf to arbitrary destinations while having control of the contents of the request itself. SSRF vulnerabilities often arise from implementations where our web application needs to use third-party services.', 'https://owasp.org/Top10/A10_2021-Server-Side_Request_Forgery_%28SSRF%29/')
go

create table Tools
(
id_Tool nvarchar (50) primary key,
Usage nvarchar (100),
Download nvarchar (100)
)
go

insert into Tools (id_Tool, Usage, Download)
values
('Terminal/Powershell,Cmd', 'https://github.com/fleschutz/PowerShell/blob/main/docs/cheat-sheet.md', 'https://github.com/fleschutz/PowerShell.git'),
('Linux Terminal', 'https://www.geeksforgeeks.org/linux-commands-cheat-sheet/', null),
('Shodan', 'https://www.shodan.io/search/examples', 'https://github.com/achillean/shodan-python.git'),
('DnsDumpster', 'https://github.com/nmmapper/dnsdumpster', 'https://github.com/nmmapper/dnsdumpster.git'),
('Google dorking', 'https://www.freecodecamp.org/news/google-dorking-for-pentesters-a-practical-tutorial/', null),
('dnsrecon', 'https://www.geeksforgeeks.org/dnsrecon-a-powerful-dns-enumeration-script/', 'https://github.com/darkoperator/dnsrecon.git'),
('Sublist3r', 'https://www.geeksforgeeks.org/what-is-sublist3r-and-how-to-use-it/', 'https://github.com/aboul3la/Sublist3r'),
('Wappalyzer','https://github.com/xscorp/wappalyzer', 'https://github.com/xscorp/wappalyzer.git'),
('Archive', null, null),
('Github dorking', 'https://cheatsheet.haax.fr/open-source-intelligence-osint/dorks/github_dorks/', null),
('Amazon AWS S3 Buckets', 'https://www.geeksforgeeks.org/s3-bucket-enumeration-and-exploitation/', null),
('crt', null, null),
('ctsearch', null, null),
('ffuf', 'https://github.com/ffuf/ffuf', 'https://github.com/ffuf/ffuf.git'),
('dirb', 'https://www.hackingarticles.in/comprehensive-guide-on-dirb-tool/','https://github.com/v0re/dirb.git'),
('gobuster', 'https://abrictosecurity.com/gobuster-directory-enumerator-cheat-sheet/', 'https://github.com/OJ/gobuster.git'),
('WPScan', 'https://github.com/wpscanteam/wpscan', 'https://github.com/wpscanteam/wpscan.git')
go

create table CheatSheetsandPayloads
(
id_Vulnerabilities nvarchar (100) foreign key references Vulnerabilities(id_Vulnerabilities),
id_Tool nvarchar (50) foreign key references Tools(id_Tool),
CheatSheet nvarchar (300),
Payload_list nvarchar (200),
Type nvarchar (100)
)
go

insert into CheatSheetsAndPayloads
(id_Vulnerabilities, CheatSheet, Payload_list, Type)
values 
('Injection', 'https://book.hacktricks.xyz/pentesting-web/command-injection','https://github.com/payloadbox/command-injection-payload-list', 'Command Injection'),
('Injection', 'https://book.hacktricks.xyz/pentesting-web/sql-injection', 'https://github.com/payloadbox/sql-injection-payload-list', 'Sql Injection'),
('Broken Access Control', 'https://github.com/swisskyrepo/PayloadsAllTheThings/tree/master/Insecure%20Direct%20Object%20References', null, 'IDOR'),
('Injection', 'https://github.com/swisskyrepo/PayloadsAllTheThings/tree/master/XSS%20Injection', 'https://github.com/payloadbox/xss-payload-list', 'XSS'),
('Server-Side Request Forgery (SSRF)', 'https://github.com/swisskyrepo/PayloadsAllTheThings/tree/master/Server%20Side%20Request%20Forgery', null, 'SSRF/CSRF'),
('Injection', 'https://github.com/swisskyrepo/PayloadsAllTheThings/tree/master/XXE%20Injection', 'https://github.com/payloadbox/xxe-injection-payload-list', 'XXE')

create table Enumeration
(
id_Step nvarchar (20),
id_url nvarchar (50),
id_Tool nvarchar (50) foreign key references Tools(id_Tool),
id_cmd nvarchar (500)
)
go

insert into Enumeration
(id_Step, id_url, id_Tool, id_cmd)
values
(1, null, 'Terminal/Powershell,Cmd', 'nslookup -> domain name'),
(2, null, 'Linux Terminal', 'whois -> domain name'), 
(3, 'https://www.shodan.io/', 'Shodan', 'search ip'),
(4, 'https://dnsdumpster.com/', 'DnsDumpster', 'search domain'),
(5, 'https://google.com/', 'Google dorking', 'https://github.com/chr3st5an/Google-Dorking'),
(6, 'https://github.com/darkoperator/dnsrecon', 'dnsrecon', 'dnsrecon -h'),
(6, 'https://github.com/aboul3la/Sublist3r', 'Sublist3r', 'Sublist3r -h'),
(7, 'https://www.wappalyzer.com/', 'Wappalyzer', 'WebSite url'),
(8, 'https://archive.org/web/', 'Archive', 'WebSite url'),
(9, 'https://github.com', 'Github dorking', 'Site name, Project name etc'),
(10, null, 'Amazon AWS S3 Buckets', '{name}-assets, {name}-www, {name}-public, {name}-private, etc'),
(11, 'http://crt.sh/', 'crt', 'domain name'),
(11, 'https://ui.ctsearch.entrust.com/ui/ctsearchui', 'ctsearch', 'domain name'),
(12, 'https://github.com/ffuf/ffuf', 'ffuf', 'ffuf -w /path/to/wordlist -u https://target/FUZZ'),
(12, 'https://github.com/v0re/dirb', 'dirb', 'dirb http://MACHINE_IP/ /usr/share/wordlists/SecLists/Discovery/Web-Content/common.txt'),
(12, 'https://github.com/OJ/gobuster', 'gobuster', 'gobuster dir --url http://MACHINE_IP/ -w /usr/share/wordlists/SecLists/Discovery/Web-Content/common.txt')
go

create table Targets (
id_Domain nvarchar (100) primary key,
Url nvarchar (100),
Ip nvarchar (500),
Part_of nvarchar (100),
Scope nvarchar (500),
Graph varbinary (max),
Subdomains nvarchar (50),
Directories nvarchar (50),
Folder nvarchar (500)
)
go

create table CheckList (
id_Checklist nvarchar (100) primary key,
id_Domain nvarchar (100) foreign key references Targets(id_Domain),
id_Subdomain nvarchar (100),
id_Vulnerabilities nvarchar (100) foreign key references Vulnerabilities(id_Vulnerabilities),
Tested_YN nvarchar (1)
)
go

create table Found (
id_Report nvarchar (400) primary key,
id_Checklist nvarchar (100) foreign key references Checklist(id_Checklist),
id_Description text,
Url nvarchar (100),
Payload_used nvarchar (1000),
Method nvarchar (50),
Request nvarchar (100),
Date_Year date,
Screenshot varbinary (max),
Video nvarchar (100)
)
go


