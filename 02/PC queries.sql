--- 1 ---
SELECT maker,speed
FROM product, laptop
WHERE (product.model = laptop.model AND hd > 9 AND type = 'Laptop')

--- 2 ---
SELECT p.model, l.price 
FROM product p 
INNER JOIN laptop AS l ON p.model = l.model
WHERE p.maker = 'B'

UNION 

SELECT p.model, pc.price 
FROM product p 
INNER JOIN pc ON p.model = pc.model
WHERE p.maker = 'B'

UNION 

SELECT p.model, pr.price 
FROM product p 
INNER JOIN printer AS pr ON p.model = pr.model
WHERE p.maker = 'B'

--- 3 ---
SELECT maker
FROM product 
WHERE type = 'Laptop'
EXCEPT
SELECT maker
FROM product 
WHERE type = 'PC'

--- 4 ---
SELECT DISTINCT p1.hd 
FROM pc AS p1 INNER JOIN pc AS p2
ON P1.code <> P2.code AND p1.hd = p2.hd 

--- 5 ---
SELECT p1.model, p2.model
FROM pc AS p1 INNER JOIN pc AS p2
ON p1.speed = p2.speed AND p1.ram = p2.ram AND p1.model < p2.model

--- 6 ---
SELECT DISTINCT maker
FROM product, pc
WHERE pc.speed > 400 AND pc.model = product.model



