SELECT a.machine_id ,
round(avg(b.timestamp - a.timestamp),3) AS processing_time
FROM Activity a JOIN Activity b
ON a.machine_id = b.machine_id AND a.process_id = b.process_id AND a.activity_type = 'start' AND b.activity_type = 'end' group by a.machine_id;

**ANOTHER WAY**

SELECT a.machine_id ,
round(avg(b.timestamp - a.timestamp),3) AS processing_time
FROM Activity a JOIN Activity b
ON a.machine_id = b.machine_id AND a.process_id = b.process_id WHERE a.ACTIVITY_TYPE <> b.ACTIVITY_TYPE AND a.ACTIVITY_TYPE <> 'end' group by a.machine_id  ;
