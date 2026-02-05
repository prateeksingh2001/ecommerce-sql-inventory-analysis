-- Clean and standardize data

-- Products with price = 0
SELECT *
FROM zepto
WHERE mrp = 0
   OR discountedSellingPrice = 0;

-- Remove invalid price entries
DELETE FROM zepto
WHERE mrp = 0;

-- Convert paise to rupees
UPDATE zepto
SET mrp = mrp / 100.0,
    discountedSellingPrice = discountedSellingPrice / 100.0;

-- Verify conversion
SELECT mrp, discountedSellingPrice
FROM zepto;
