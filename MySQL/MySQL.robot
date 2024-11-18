*** Settings ***
Resource    Resources/mysql_resource.resource


*** Test Cases ***
Login
    Connect To Database    pymysql    ${DB_Name}    ${DB_User}    ${DB_Password}    ${DB_Host}    ${DB_Port}
   # ${result}=    Execute Sql String    SELECT * FROM classicmodels.offices where officeCode=2;
   # Log    ${result}
   # Should Be Equal    ${result}[0][0]    2
    #Check Query Result        SELECT * FROM classicmodels.offices where officeCode=3;    contains    NYC    row=0    col=1

   # Execute Sql String     INSERT INTO offices (officeCode, city, phone, addressLine1, country, postalCode, territory) VALUES ('9', 'Velke Lovce', '+421987555111', 'Hlavna 1', 'Slovakia', '94001', 'EMEA');



    Disconnect From Database

