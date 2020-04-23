-- Database Queries

-- Find all customers with postal code 1010

SELECT *
FROM "Customer"
WHERE "PostalCode" = "1010";

-- Find the phone number for the supplier with the id 11

SELECT *
FROM "Supplier"
WHERE "Id" = "11";

-- List first 10 orders placed, sorted descending by the order date

SELECT *
FROM "Order"
ORDER BY "OrderDate" DESC
LIMIT 10;

-- Find all customers that live in London, Madrid, or Brazil

SELECT *
FROM "Customer"
WHERE "City" = "London" OR "City" = "Madrid" OR "Country" = "Brazil";

-- Add a customer record for "The Shire", the contact name is "Bilbo Baggins" the address is -"1 Hobbit-Hole" in "Bag End", postal code "111" and the country is "Middle Earth"

INSERT INTO "Customer"
    (CompanyName, ContactName, Address, City, PostalCode, Country)
VALUES
    ("The Shire", "Bilbo Bagins", "1 Hobbit-Hole", "Bag End", 111, "Middle Earth");

-- Update Bilbo Baggins record so that the postal code changes to "11122"

UPDATE "Customer"
SET "PostalCode" = "11122"
WHERE "ContactName" = "Bilbo Baggins"

-- (Stretch) Find a query to discover how many different cities are stored in the Customers table. Repeats should not be double counted

SELECT COUNT ( DISTINCT "City" ) AS "Number of unique cities"
FROM Customer;

-- (Stretch) Find all suppliers who have names longer than 20 characters. You can use `length(SupplierName)` to get the length of the name

SELECT "CompanyName"
FROM "Supplier"
WHERE LENGTH(CompanyName) > 20