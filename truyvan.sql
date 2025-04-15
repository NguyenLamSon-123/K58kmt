select * from db.lamson

ALTER TABLE db.lamson
ALTER COLUMN giovao TIME;

ALTER TABLE db.lamson
ALTER COLUMN giora TIME;
DECLARE @ngay DATE = '2025-03-24';
DECLARE @timeStart TIME = '06:30:00';
DECLARE @timeEnd TIME = '10:00:00';

SELECT *
FROM db.lamson
WHERE 
    ngay = @ngay
    AND (
        (@timeStart BETWEEN giovao AND giora)
        OR (@timeEnd BETWEEN giovao AND giora)
        OR (giovao BETWEEN @timeStart AND @timeEnd)
        OR (giora BETWEEN @timeStart AND @timeEnd)
    );

