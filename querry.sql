USE beautybase;

SELECT s.date, c.client_name, p.service_name, b.master_name
FROM schedule s

JOIN clients c on c.client_id = s.client_id
JOIN price_list p on p.service_id = s.service_id
JOIN beauty_creators b on b.master_id = s.master_id
