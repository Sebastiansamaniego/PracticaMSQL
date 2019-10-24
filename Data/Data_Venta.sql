use ventaempresa;
SET FOREIGN_KEY_CHECKS=0;
insert into CUSTOMER
(CUSTNO,CUSTFIRSTNAME,CUSTLASTNAME,CUSTCITY,CUSTSTATE,CUSTZIP,CUSTBAL)
values
("C0954327","Sheri","Gordon","Littleton","CO",801295543,230),
("C1010398","Jim","Glussman","Denver","CO",801110033,200),
("C2388597","Beth","Taylor","Seattle","WA",981031121,500),
("C3340959","Betty","Wise","Seattle","WA",981783311,200),
("C3400503","Bob","Mann","Monroe","WA",980131095,0),
("C8543321","Ron","Thompson","Renton","WA",986661289,85);
select * from CUSTOMER;

insert into EMPLOYEE
(EMPNO,EMPFIRSTNAME,EMPLASTNAME,EMPPHONE,EMPEMAIL)
values
("E1329594","Landi","Santos",3037891234,"LSantos@bigco.com"),
("E8544399","Joe","Jenkins",3032219875,"JJenkins@bigco.com"),
("E8843211","Amy","Tang",3035564321,"ATang@bigco.com"),
("E9345771","Colin","White",3032214452,"CWhite@bigco.com"),
("E9884325","Thomas","Johnson",3035569987,"TJohnson@bigco.com"),
("E9954302","Mary","Hill",3035569871,"MHill@bigco.com");
select * from EMPLOYEE;

insert into ORDERTBL
(ORDNO,ORDDATE,CUSTNO,EMPNO)
values
("O1116324","23-1-13","C0954327","E8544399"),
("O2334661","14-1-13","C0954327","E1329594"),
("O3331222","13-1-13","C1010398",""),
("O2233457","12-1-13","C2388597","E9884325"),
("O4714645","11-1-13","C2388597","E1329594"),
("O5511365","22-1-13","C3340959","E9884325"),
("O7989497","16-1-13","C3400503","E9345771"),
("O1656777","11-2-13","C8543321",""),
("O7959898","19-2-13","C8543321","E8544399");
select * from ORDERTBL;