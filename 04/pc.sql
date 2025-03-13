--- 1 ---
SELECT DISTINCT *
FROM product 
WHERE model <> ALL(SELECT model FROM printer) AND
model <> ALL(SELECT model FROM laptop) AND model <> ALL(SELECT model FROM pc)

--- 2 ---
SELECT DISTINCT pr.maker
FROM (SELECT maker
FROM product JOIN printer
ON product.model = printer.model) pr JOIN (SELECT maker 
FROM product JOIN laptop
ON product.model = laptop.model) l
ON pr.maker = l.maker

--- 3 ---
SELECT DISTINCT l1.hd
FROM laptop AS l1, laptop AS l2
WHERE l1.hd = l2.hd AND l1.code != l2.code

--- 4 ---
SELECT *
FROM pc JOIN product
ON product.model = pc.model
WHERE maker IS NULL
