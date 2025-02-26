USE bank;
#1
SELECT client_id 
	FROM `client`
    WHERE district_id = 1
    LIMIT 5;
#2    
SELECT client_id
	FROM `client`
    WHERE district_id = 72
    ORDER BY client_id DESC
    limit 1;

#3
SELECT amount
	FROM loan
    ORDER BY amount ASC
    limit 3;
#4  
SELECT DISTINCT `status`
	FROM loan
    ORDER BY status ASC;
#5   
SELECT loan_id
	FROM loan
	ORDER BY payments ASC
    limit 1;
#6
SELECT account_id, amount
	FROM loan
    ORDER BY amount ASC
    limit 5;
#7
SELECT account_id
	FROM loan
    WHERE duration = 60
    ORDER BY amount ASC
    LIMIT 5;
#8
SELECT DISTINCT k_symbol
	FROM `order`
	ORDER BY k_symbol ASC;
#9
SELECT DISTINCT order_id
	FROM `order`
    WHERE account_id = 34;
#10
SELECT DISTINCT account_id 
	FROM `order`
    WHERE order_id BETWEEN 29540 AND 29560;

#11
SELECT amount
	FROM `order`
    WHERE account_to = 30067122;

#12
SELECT trans_id, `date`, `type`, amount
	FROM trans
    WHERE account_id = 793
    ORDER BY `date` DESC
    limit 10;

#13 
SELECT  district_id, COUNT(district_id) AS count
	FROM `client`
	WHERE district_id < 10
	GROUP BY district_id
	ORDER BY district_id ASC;
    
#14
SELECT `type`, COUNT(`type`) AS count
	FROM card
    GROUP BY `type`
	ORDER BY COUNT(`type`) DESC;

#15
SELECT account_id, SUM(amount)
	FROM loan
    GROUP BY account_id
    ORDER BY SUM(amount) DESC
	limit 10;
    
#16
SELECT `date`, COUNT(loan_id)
	FROM loan
    WHERE `date` < 930907
    GROUP BY `date`
    ORDER BY COUNT(loan_id) ASC;

#17
SELECT `date`, duration, COUNT(loan_id)
	FROM loan
    WHERE `date` BETWEEN "971201" AND "980101"
    GROUP BY `date`, duration
    ORDER BY `date` ASC;

#18
SELECT account_id, `type`, SUM(amount) 
	FROM trans
    WHERE account_id = 396
    GROUP BY `type`;
	
    