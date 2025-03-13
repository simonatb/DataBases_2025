--- 1 ---
SELECT DISTINCT maker
FROM product JOIN pc
	ON product.model = pc.model
WHERE speed > 500

--- 2 ---
SELECT code,model,price
FROM printer
WHERE price >=ALL(SELECT price
					FROM printer)

--- 3 ---
SELECT *
FROM laptop
WHERE speed <ALL(SELECT speed
				FROM pc) 

--- 5 ---
SELECT maker
FROM printer JOIN product
	ON printer.model = product.model
WHERE color = 'y' AND price <=ALL(SELECT price
				FROM printer
				WHERE color = 'y')

--- 6 ---







		
