--- 1 ---
SELECT model AS MODEL, speed AS MHZ, Hd AS GB
FROM pc
WHERE price < 1200

--- 2 ---
SELECT DISTINCT maker FROM product
WHERE model in (SELECT model FROM printer)

--- 3 ---
SELECT model, ram, screen
FROM laptop
WHERE price > 1000

SELECT *
FROM printer
WHERE color = 'Y'

SELECT model, speed, hd
FROM pc
WHERE cd = '12x' OR cd = '16x' AND price < 2000