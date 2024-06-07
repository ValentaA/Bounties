# Bounties
Bug bounty management system

![IMG_20240531_225717_HDR](https://github.com/ValentaA/Bounties/assets/90060698/53bd3263-928d-4f96-b776-5b601d22c056)





Instructions:

Clone the Bounties_project  to "C:\" and extract it. You need to have two folders: “C:\Bounties” and “C:\Bounties_database”.

![setup](https://github.com/ValentaA/Bounties/assets/90060698/12942481-f046-4e16-88ea-ec6a28038328)

Install MS SQL Server with management system and Microsoft Access. Open management system SSMS, click on new query and drag the bounties.sql file from the Tsql folder or just double click on it from the file location. Click on execute. The tsql script will now create the database named "Bounties". 
Close the management system and double click on Bounties - MS Access file from the Bounties_database folder.if you get an error just ignore it and click on External data tab. 

![external_data](https://github.com/ValentaA/Bounties/assets/90060698/e30cf956-8266-4574-b5dc-211d0932784a)

Click on New data/From SQL Server/Link to the data source by creating a linked table. This will open a new window called Select Data Source, click on Machine Data Source/New/User Data Source and ODBC Driver.

![external_data2](https://github.com/ValentaA/Bounties/assets/90060698/067d8724-e2a4-45bd-a718-218e06a1792c)

![external_data3](https://github.com/ValentaA/Bounties/assets/90060698/230bbe62-27f4-4968-9dfa-6d9dc2a13a5a)

![external_data4](https://github.com/ValentaA/Bounties/assets/90060698/788e3fef-cd1b-484f-a191-e09dae665c99)

![external_data5](https://github.com/ValentaA/Bounties/assets/90060698/c9e2ac8d-ca51-4e37-bff6-b183faba13cd)

![external_data6](https://github.com/ValentaA/Bounties/assets/90060698/6ab92b77-d7ab-480a-95e2-77239ddd0f92)

Copy  the name of your SQL server and name the connection.

![external_data7](https://github.com/ValentaA/Bounties/assets/90060698/fe984029-e5ad-4d94-9e5f-304cb0b729e9)

![external_data8](https://github.com/ValentaA/Bounties/assets/90060698/979f5a3b-663c-4ded-9063-dd9996fd9212)

![external_data9](https://github.com/ValentaA/Bounties/assets/90060698/28fd216e-54d9-4096-9e5e-9bf8d6d6cd84)

Choose your type of authentication, in mine case is Windows Authentication (local) and set the default database to Bounties. 

![external_data10](https://github.com/ValentaA/Bounties/assets/90060698/b7987b0f-66c7-4f49-8e2b-49db66c6ab39)

![external_data11](https://github.com/ValentaA/Bounties/assets/90060698/b732807e-ee1e-4bb9-b90b-e38ed0a46096)

![external_data12](https://github.com/ValentaA/Bounties/assets/90060698/536bb85a-d699-4ea4-af6c-8a8ea66bb872)

For the last step you will get the popup window called Link Tables. Here you need to select all of the tables from the picture below and click ok. 

![external_Data13](https://github.com/ValentaA/Bounties/assets/90060698/2ee458d8-17a3-444d-95ba-f0f66869a83b)

Click on cancel when prompted to make new connections between the tables.

![external_data14](https://github.com/ValentaA/Bounties/assets/90060698/0f388f79-45d1-4455-9c69-80e96bcd471b)

Now you just need to choose one of the Console forms.

![Screenshot 2024-06-04 103620](https://github.com/ValentaA/Bounties/assets/90060698/ab4e620f-f016-43e3-8d15-8f2b05c3ef86)

Enjoy!


Note: Bounties folder is made just for logs, screens and outputs from the tools like Gobuster, nmap etc.You can change that with the right click on Console/Console2 tab and then connect to remote locations like python web server and shared folders.
You can use the same method to configure IRC(Chat) form and integrate the browser based chat of your choice and do the same with the AI form to use AI based chat like Microsoft Copilot or ChatGPT.

![loc](https://github.com/ValentaA/Bounties/assets/90060698/331b3105-dbfc-4a32-973c-1dd41acce239)

![loc2](https://github.com/ValentaA/Bounties/assets/90060698/8a784029-067b-4d51-baf9-4b1c196543bd)


