SELECT 
    usr, COUNT(usr)
FROM
    usr
GROUP BY usr
HAVING COUNT(usr) > 1;

CREATE TABLE usr_repeated AS (SELECT u.usr FROM
    usr u
GROUP BY u.usr
HAVING COUNT(u.usr) > 1);

UPDATE usr u 
SET 
    u.usr = CONCAT(u.usr, u.id)
WHERE
    u.usr IN (SELECT 
            usr
        FROM
            (SELECT 
                @rownum:=@rownum + 1 rownum, t.*
            FROM
                (SELECT @rownum:=0) r, usr_repeated t
            ORDER BY t.usr) AS t2
        WHERE
            rownum BETWEEN 1 AND 5.000);

UPDATE usr u 
SET 
    u.usr = CONCAT(u.usr, u.id)
WHERE
    u.usr IN (SELECT 
            usr
        FROM
            (SELECT 
                @rownum:=@rownum + 1 rownum, t.*
            FROM
                (SELECT @rownum:=0) r, usr_repeated t
            ORDER BY t.usr) AS t2
        WHERE
            rownum BETWEEN 5001 AND 10000);
            
UPDATE usr u 
SET 
    u.usr = CONCAT(u.usr, u.id)
WHERE
    u.usr IN (SELECT 
            usr
        FROM
            (SELECT 
                @rownum:=@rownum + 1 rownum, t.*
            FROM
                (SELECT @rownum:=0) r, usr_repeated t
            ORDER BY t.usr) AS t2
        WHERE
            rownum BETWEEN 10001 AND 15000);
            
UPDATE usr u 
SET 
    u.usr = CONCAT(u.usr, u.id)
WHERE
    u.usr IN (SELECT 
            usr
        FROM
            (SELECT 
                @rownum:=@rownum + 1 rownum, t.*
            FROM
                (SELECT @rownum:=0) r, usr_repeated t
            ORDER BY t.usr) AS t2
        WHERE
            rownum BETWEEN 15001 AND 20000);
            
UPDATE usr u 
SET 
    u.usr = CONCAT(u.usr, u.id)
WHERE
    u.usr IN (SELECT 
            usr
        FROM
            (SELECT 
                @rownum:=@rownum + 1 rownum, t.*
            FROM
                (SELECT @rownum:=0) r, usr_repeated t
            ORDER BY t.usr) AS t2
        WHERE
            rownum BETWEEN 20001 AND 25000);
            
UPDATE usr u 
SET 
    u.usr = CONCAT(u.usr, u.id)
WHERE
    u.usr IN (SELECT 
            usr
        FROM
            (SELECT 
                @rownum:=@rownum + 1 rownum, t.*
            FROM
                (SELECT @rownum:=0) r, usr_repeated t
            ORDER BY t.usr) AS t2
        WHERE
            rownum BETWEEN 25001 AND 30000);
            
UPDATE usr u 
SET 
    u.usr = CONCAT(u.usr, u.id)
WHERE
    u.usr IN (SELECT 
            usr
        FROM
            (SELECT 
                @rownum:=@rownum + 1 rownum, t.*
            FROM
                (SELECT @rownum:=0) r, usr_repeated t
            ORDER BY t.usr) AS t2
        WHERE
            rownum BETWEEN 30001 AND 35000);
            
UPDATE usr u 
SET 
    u.usr = CONCAT(u.usr, u.id)
WHERE
    u.usr IN (SELECT 
            usr
        FROM
            (SELECT 
                @rownum:=@rownum + 1 rownum, t.*
            FROM
                (SELECT @rownum:=0) r, usr_repeated t
            ORDER BY t.usr) AS t2
        WHERE
            rownum BETWEEN 35001 AND 40000);
            
UPDATE usr u 
SET 
    u.usr = CONCAT(u.usr, u.id)
WHERE
    u.usr IN (SELECT 
            usr
        FROM
            (SELECT 
                @rownum:=@rownum + 1 rownum, t.*
            FROM
                (SELECT @rownum:=0) r, usr_repeated t
            ORDER BY t.usr) AS t2
        WHERE
            rownum BETWEEN 40001 AND 45000);
            
UPDATE usr u 
SET 
    u.usr = CONCAT(u.usr, u.id)
WHERE
    u.usr IN (SELECT 
            usr
        FROM
            (SELECT 
                @rownum:=@rownum + 1 rownum, t.*
            FROM
                (SELECT @rownum:=0) r, usr_repeated t
            ORDER BY t.usr) AS t2
        WHERE
            rownum BETWEEN 45001 AND 50000);
            
UPDATE usr u 
SET 
    u.usr = CONCAT(u.usr, u.id)
WHERE
    u.usr IN (SELECT 
            usr
        FROM
            (SELECT 
                @rownum:=@rownum + 1 rownum, t.*
            FROM
                (SELECT @rownum:=0) r, usr_repeated t
            ORDER BY t.usr) AS t2
        WHERE
            rownum BETWEEN 50001 AND 55000);
            
UPDATE usr u 
SET 
    u.usr = CONCAT(u.usr, u.id)
WHERE
    u.usr IN (SELECT 
            usr
        FROM
            (SELECT 
                @rownum:=@rownum + 1 rownum, t.*
            FROM
                (SELECT @rownum:=0) r, usr_repeated t
            ORDER BY t.usr) AS t2
        WHERE
            rownum BETWEEN 55001 AND 60000);
            
UPDATE usr u 
SET 
    u.usr = CONCAT(u.usr, u.id)
WHERE
    u.usr IN (SELECT 
            usr
        FROM
            (SELECT 
                @rownum:=@rownum + 1 rownum, t.*
            FROM
                (SELECT @rownum:=0) r, usr_repeated t
            ORDER BY t.usr) AS t2
        WHERE
            rownum BETWEEN 60001 AND 61960);

drop table usr_repeated;

ALTER TABLE `un_usr_sk`.`usr` 
ADD UNIQUE INDEX `usr_UNIQUE` (`usr` ASC) VISIBLE;
;
