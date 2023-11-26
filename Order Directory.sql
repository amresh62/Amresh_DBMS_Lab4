use order_directory;
CREATE TABLE supplier (
    supp_id INT PRIMARY KEY,
    supp_name VARCHAR(50) NOT NULL,
    supp_city VARCHAR(50) NOT NULL,
    supp_phone VARCHAR(50) NOT NULL
);

CREATE TABLE customer (
    cus_id INT PRIMARY KEY,
    cus_name VARCHAR(20) NOT NULL,
    cus_phone VARCHAR(10) NOT NULL,
    cus_city VARCHAR(30) NOT NULL,
    cus_gender CHAR
);

CREATE TABLE category (
    cat_id INT PRIMARY KEY,
    cat_name VARCHAR(20) NOT NULL
);

CREATE TABLE product (
    pro_id INT PRIMARY KEY,
    pro_name VARCHAR(20) NOT NULL DEFAULT 'Dummy',
    pro_desc VARCHAR(60),
    cat_id INT,
    FOREIGN KEY (cat_id)
        REFERENCES category (cat_id)
);

CREATE TABLE supplier_pricing (
    pricing_id INT PRIMARY KEY,
    pro_id INT,
    supp_id INT,
    supp_price INT DEFAULT 0,
    FOREIGN KEY (pro_id)
        REFERENCES product (pro_id),
    FOREIGN KEY (supp_id)
        REFERENCES supplier (supp_id)
);

CREATE TABLE `order` (
    ord_id INT PRIMARY KEY,
    ord_amount INT NOT NULL,
    ord_date DATE NOT NULL,
    cus_id INT,
    pricing_id INT,
    FOREIGN KEY (cus_id)
        REFERENCES customer (cus_id),
    FOREIGN KEY (pricing_id)
        REFERENCES supplier_pricing (pricing_id)
);

CREATE TABLE rating (
    rat_id INT PRIMARY KEY,
    ord_id INT,
    rat_ratstars INT NOT NULL,
    FOREIGN KEY (ord_id)
        REFERENCES `order` (ord_id)
);

INSERT INTO SUPPLIER (SUPP_ID,SUPP_NAME,SUPP_CITY,SUPP_PHONE)
VALUES(1,'Rajesh Retails','Delhi','1234567890');
INSERT INTO SUPPLIER (SUPP_ID,SUPP_NAME,SUPP_CITY,SUPP_PHONE)
VALUES(2,'Appario Ltd.','Mumbai','2589631470');
INSERT INTO SUPPLIER (SUPP_ID,SUPP_NAME,SUPP_CITY,SUPP_PHONE)
VALUES(3,'Knome products','Banglore','9785462315');
INSERT INTO SUPPLIER (SUPP_ID,SUPP_NAME,SUPP_CITY,SUPP_PHONE)
VALUES(4,'Bansal Retails','Kochi','8975463285');
INSERT into SUPPLIER (SUPP_ID,SUPP_NAME,SUPP_CITY,SUPP_PHONE)
VALUES(5,'Mittal Ltd.','Lucknow','7898456532');

INSERT INTO CUSTOMER(CUS_ID,CUS_NAME,CUS_PHONE,CUS_CITY,CUS_GENDER)
VALUES(1,'AAKASH','9999999999','DELHI','M');
INSERT INTO CUSTOMER(CUS_ID,CUS_NAME,CUS_PHONE,CUS_CITY,CUS_GENDER)
VALUES(2,'AMAN','9785463215','NOIDA','M');
INSERT INTO CUSTOMER(CUS_ID,CUS_NAME,CUS_PHONE,CUS_CITY,CUS_GENDER)
VALUES(3,'NEHA','9999999999','MUMBAI','F');
INSERT INTO CUSTOMER(CUS_ID,CUS_NAME,CUS_PHONE,CUS_CITY,CUS_GENDER)
VALUES(4,'MEGHA','9994562399','KOLKATA','F');
INSERT INTO CUSTOMER(CUS_ID,CUS_NAME,CUS_PHONE,CUS_CITY,CUS_GENDER)
VALUES(5,'PULKIT','7895999999','LUCKNOW','M');

INSERT INTO CATEGORY(CAT_ID,CAT_NAME)
VALUES(1,'BOOKS');
INSERT INTO CATEGORY(CAT_ID,CAT_NAME)
VALUES(2,'GAMES');
INSERT INTO CATEGORY(CAT_ID,CAT_NAME)
VALUES(3,'GROCERIES');
INSERT INTO CATEGORY(CAT_ID,CAT_NAME)
VALUES(4,'ELECTRONICS');
INSERT INTO CATEGORY(CAT_ID,CAT_NAME)
VALUES(5,'CLOTHES');

INSERT INTO PRODUCT VALUES(1,'GTA V','Windows 7 and above with i5 processor and 8GB RAM',2);
INSERT INTO PRODUCT VALUES(2,'TSHIRT','SIZE-L with Black, Blue and White variations',5);
INSERT INTO PRODUCT VALUES(3,'ROG LAPTOP','Windows 10 with 15inch screen, i7 processor, 1TB SSD',4);
INSERT INTO PRODUCT VALUES(4,'OATS','Highly Nutritious from Nestle',3);
INSERT INTO PRODUCT VALUES(5,'HARRY POTTER','Best Collection of all time by J.K Rowling',1);
INSERT INTO PRODUCT VALUES(6,'MILK','1L Toned MIlk',3);
INSERT INTO PRODUCT VALUES(7,'Boat Earphones','1.5Meter long Dolby Atmos',4);
INSERT INTO PRODUCT VALUES(8,'Jeans','Stretchable Denim Jeans with various sizes and color',5);
INSERT INTO PRODUCT VALUES(9,'Project IG','compatible with windows 7 and above',2);
INSERT INTO PRODUCT VALUES(10,'Hoodie','Black GUCCI for 13 yrs and above',5);
INSERT INTO PRODUCT VALUES(11,'Rich Dad Poor Dad','Written by RObert Kiyosaki',1);
INSERT INTO PRODUCT VALUES(12,'Train Your Brain','By Shireen Stephen',1);

INSERT INTO SUPPLIER_PRICING(PRICING_ID,PRO_ID,SUPP_ID,SUPP_PRICE)
VALUES(1,1,2,1500);
INSERT INTO SUPPLIER_PRICING(PRICING_ID,PRO_ID,SUPP_ID,SUPP_PRICE)
VALUES(2,3,5,30000);
INSERT INTO SUPPLIER_PRICING(PRICING_ID,PRO_ID,SUPP_ID,SUPP_PRICE)
VALUES(3,5,1,3000);
INSERT INTO SUPPLIER_PRICING(PRICING_ID,PRO_ID,SUPP_ID,SUPP_PRICE)
VALUES(4,2,3,2500);
INSERT INTO SUPPLIER_PRICING(PRICING_ID,PRO_ID,SUPP_ID,SUPP_PRICE)
VALUES(5,4,1,1000);
INSERT INTO SUPPLIER_PRICING(PRICING_ID,PRO_ID,SUPP_ID,SUPP_PRICE)
VALUES(6,12,2,780);
INSERT INTO SUPPLIER_PRICING(PRICING_ID,PRO_ID,SUPP_ID,SUPP_PRICE)
VALUES(7,12,4,789);
INSERT INTO SUPPLIER_PRICING(PRICING_ID,PRO_ID,SUPP_ID,SUPP_PRICE)
VALUES(8,3,1,31000);
INSERT INTO SUPPLIER_PRICING(PRICING_ID,PRO_ID,SUPP_ID,SUPP_PRICE)
VALUES(9,1,5,1450);
INSERT INTO SUPPLIER_PRICING(PRICING_ID,PRO_ID,SUPP_ID,SUPP_PRICE)
VALUES(10,4,2,999);
INSERT INTO SUPPLIER_PRICING(PRICING_ID,PRO_ID,SUPP_ID,SUPP_PRICE)
VALUES(11,7,3,549);
INSERT INTO SUPPLIER_PRICING(PRICING_ID,PRO_ID,SUPP_ID,SUPP_PRICE)
VALUES(12,7,4,529);
INSERT INTO SUPPLIER_PRICING(PRICING_ID,PRO_ID,SUPP_ID,SUPP_PRICE)
VALUES(13,6,2,105);
INSERT INTO SUPPLIER_PRICING(PRICING_ID,PRO_ID,SUPP_ID,SUPP_PRICE)
VALUES(14,6,1,99);
INSERT INTO SUPPLIER_PRICING(PRICING_ID,PRO_ID,SUPP_ID,SUPP_PRICE)
VALUES(15,2,5,2999);
INSERT INTO SUPPLIER_PRICING(PRICING_ID,PRO_ID,SUPP_ID,SUPP_PRICE)
VALUES(16,5,2,2999);

INSERT INTO `ORDER`(ORD_ID,ORD_AMOUNT,ORD_DATE,CUS_ID,PRICING_ID)
VALUES(101,1500,'2021-10-06',2,1);
INSERT INTO `ORDER`(ORD_ID,ORD_AMOUNT,ORD_DATE,CUS_ID,PRICING_ID)
VALUES(102,1000, '2021-10-12', 3, 5);
INSERT INTO `ORDER`(ORD_ID,ORD_AMOUNT,ORD_DATE,CUS_ID,PRICING_ID)
VALUES(103, 30000, '2021-09-16', 5, 2);
INSERT INTO `ORDER`(ORD_ID,ORD_AMOUNT,ORD_DATE,CUS_ID,PRICING_ID)
VALUES(104, 1500, '2021-10-05', 1, 1);
INSERT INTO `ORDER`(ORD_ID,ORD_AMOUNT,ORD_DATE,CUS_ID,PRICING_ID)
VALUES(105, 3000, '2021-08-16', 4, 3);
INSERT INTO `ORDER`(ORD_ID,ORD_AMOUNT,ORD_DATE,CUS_ID,PRICING_ID)
VALUES(106, 1450, '2021-08-18', 1, 9);
INSERT INTO `ORDER`(ORD_ID,ORD_AMOUNT,ORD_DATE,CUS_ID,PRICING_ID)
VALUES(107, 789, '2021-09-01', 3, 7);
INSERT INTO `ORDER`(ORD_ID,ORD_AMOUNT,ORD_DATE,CUS_ID,PRICING_ID)
VALUES(108,780, '2021-09-07', 5, 6);
INSERT INTO `ORDER`(ORD_ID,ORD_AMOUNT,ORD_DATE,CUS_ID,PRICING_ID)
VALUES(109, 3000, '2021-09-10', 5, 3);
INSERT INTO `ORDER`(ORD_ID,ORD_AMOUNT,ORD_DATE,CUS_ID,PRICING_ID)
VALUES(110, 2500, '2021-09-10',2, 4);
INSERT INTO `ORDER`(ORD_ID,ORD_AMOUNT,ORD_DATE,CUS_ID,PRICING_ID)
VALUES(111, 1000, '2021-09-15', 4, 5);
INSERT INTO `ORDER`(ORD_ID,ORD_AMOUNT,ORD_DATE,CUS_ID,PRICING_ID)
VALUES(112, 789, '2021-09-16', 4, 7);
INSERT INTO `ORDER`(ORD_ID,ORD_AMOUNT,ORD_DATE,CUS_ID,PRICING_ID)
VALUES(113, 31000, '2021-09-16', 1, 8);
INSERT INTO `ORDER`(ORD_ID,ORD_AMOUNT,ORD_DATE,CUS_ID,PRICING_ID)
VALUES(114, 1000, '2021-09-16', 3, 5);
INSERT INTO `ORDER`(ORD_ID,ORD_AMOUNT,ORD_DATE,CUS_ID,PRICING_ID)
VALUES(115, 3000, '2021-09-16', 5, 3);
INSERT INTO `ORDER`(ORD_ID,ORD_AMOUNT,ORD_DATE,CUS_ID,PRICING_ID)
VALUES(116, 99, '2021-09-17' ,2, 14);

INSERT INTO RATING(RAT_ID,ORD_ID,RAT_RATSTARS)
VALUES(1,101,4);
INSERT INTO RATING(RAT_ID,ORD_ID,RAT_RATSTARS)
VALUES(2,102,3);
INSERT INTO RATING(RAT_ID,ORD_ID,RAT_RATSTARS)
VALUES(3,103,1);
INSERT INTO RATING(RAT_ID,ORD_ID,RAT_RATSTARS)
VALUES(4,104,2);
INSERT INTO RATING(RAT_ID,ORD_ID,RAT_RATSTARS)
VALUES(5,105,4);
INSERT INTO RATING(RAT_ID,ORD_ID,RAT_RATSTARS)
VALUES(6,106,3);
INSERT INTO RATING(RAT_ID,ORD_ID,RAT_RATSTARS)
VALUES(7,107,4);
INSERT INTO RATING(RAT_ID,ORD_ID,RAT_RATSTARS)
VALUES(8,108,4);
INSERT INTO RATING(RAT_ID,ORD_ID,RAT_RATSTARS)
VALUES(9,109,3);
INSERT INTO RATING(RAT_ID,ORD_ID,RAT_RATSTARS)
VALUES(10,110,5);
INSERT INTO RATING(RAT_ID,ORD_ID,RAT_RATSTARS)
VALUES(11,111,3);
INSERT INTO RATING(RAT_ID,ORD_ID,RAT_RATSTARS)
VALUES(12,112,4);
INSERT INTO RATING(RAT_ID,ORD_ID,RAT_RATSTARS)
VALUES(13,113,2);
INSERT INTO RATING(RAT_ID,ORD_ID,RAT_RATSTARS)
VALUES(14,114,1);
INSERT INTO RATING(RAT_ID,ORD_ID,RAT_RATSTARS)
VALUES(15,115,1);
INSERT INTO RATING(RAT_ID,ORD_ID,RAT_RATSTARS)
VALUES(16,116,0);


/*4) Display the total number of customers based on gender who have placed individual orders of worth at least Rs.3000.*/

SELECT 
    Cus_Gender AS Gender, COUNT(cus_gender) AS TotalCustomer
FROM
    customer
WHERE
    cus_id IN (SELECT 
            cus_id
        FROM
            `order`
        WHERE
            ord_amount >= 3000)
GROUP BY cus_gender;

/*5) Display all the orders along with product name ordered by a customer having Customer_Id=2*/

SELECT 
    c.cus_id,
    c.cus_name,
    c.cus_phone,
    c.cus_city,
    o.ord_id,
    o.ord_amount,
    o.ord_date,
    p.pro_name
FROM
    customer c
        JOIN
    `order` o ON c.cus_id = o.cus_id
        JOIN
    supplier_pricing s ON o.pricing_id = s.pricing_id
        JOIN
    product p ON s.pro_id = p.pro_id
WHERE
    c.cus_id = 2
ORDER BY c.cus_name;

/*6) Display the Supplier details who can supply more than one product.*/

SELECT 
    s.supp_id,
    s.supp_name,
    s.supp_city,
    s.supp_phone,
    COUNT(s.supp_name) AS TotalProducts
FROM
    supplier s
        JOIN
    supplier_pricing sp ON s.supp_id = sp.supp_id
GROUP BY s.supp_id , s.supp_name , s.supp_city , s.supp_phone
HAVING COUNT(s.supp_name) > 1;

/*7) Find the least expensive product from each category and print the table with category id, name, product name and price of the product*/

SELECT 
    c.cat_id, c.cat_name, p.pro_name, sp.supp_price
FROM
    category c
        JOIN
    product p ON c.cat_id = p.cat_id
        JOIN
    supplier_pricing sp ON p.pro_id = sp.pro_id
WHERE
    (p.cat_id , sp.supp_price) IN (SELECT 
            cat_id, MIN(supp_price) AS min_price
        FROM
            product
                JOIN
            supplier_pricing ON product.pro_id = supplier_pricing.pro_id
        GROUP BY cat_id)
ORDER BY c.cat_id;

/*8) Display the Id and Name of the Product ordered after “2021-10-05”.*/

select p.pro_id,p.pro_name from `order` o join supplier_pricing sp on o.pricing_id=sp.pricing_id join product p on sp.pro_id=p.pro_id where o.ord_date>'2021-10-05';

/*9) Display customer name and gender whose names start or end with character 'A'.*/

SELECT cus_name, cus_gender FROM customer
WHERE cus_name LIKE 'A%' OR cus_name LIKE '%A'
ORDER BY cus_name;


/*10) Create a stored procedure to display supplier id, name, Rating(Average rating of all the products sold by every customer) and
Type_of_Service. For Type_of_Service, If rating =5, print “Excellent Service”,If rating >4 print “Good Service”, If rating >2 print “Average
Service” else print “Poor Service”. Note that there should be one rating per supplier
*/
create procedure SupplierInfo()
SELECT 
    report.supp_id,
    report.supp_name,
    report.Average,
    CASE
        WHEN report.Average = 5 THEN 'Excellent Service'
        WHEN report.Average > 4 THEN 'Good Service'
        WHEN report.Average > 2 THEN 'Average Service'
        ELSE 'Poor Service'
    END AS Type_of_Service
FROM
    (SELECT 
        final.supp_id, supplier.supp_name, final.Average
    FROM
        (SELECT 
        test2.supp_id,
            SUM(test2.rat_ratstars) / COUNT(test2.rat_ratstars) AS Average
    FROM
        (SELECT 
        supplier_pricing.supp_id, test.ORD_ID, test.RAT_RATSTARS
    FROM
        supplier_pricing
    INNER JOIN (SELECT 
        `order`.pricing_id, rating.ORD_ID, rating.RAT_RATSTARS
    FROM
        `order`
    INNER JOIN rating ON rating.`ord_id` = `order`.ord_id) AS test ON test.pricing_id = supplier_pricing.pricing_id) AS test2
    GROUP BY supplier_pricing.supp_id) AS final
    INNER JOIN supplier
    WHERE
        final.supp_id = supplier.supp_id) AS report
