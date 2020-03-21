SELECT * FROM crime_scene_report WHERE date = "20180115" AND city LIKE "SQL%";
SELECT * FROM person WHERE name LIKE "Annabel%" AND address_street_name = "Franklin Ave";
SELECT * FROM get_fit_now_member WHERE person_id = "16371";
SELECT * FROM get_fit_now_member WHERE check_in_date = "20180109";
SELECT * FROM get_fit_now_member WHERE id = "48Z7A";
SELECT * FROM get_fit_now_member WHERE id = "48Z55";
SELECT * FROM person WHERE address_street_name = "Northwestern Dr" ORDER BY address_number DESC;
SELECT * FROM interview WHERE person_id = "14887";
SELECT * FROM person WHERE id = "67318";
SELECT * FROM drivers_license WHERE id = "423327";
INSERT INTO solution VALUES (1, 'Jeremy Bowers');
SELECT value FROM solution;
INSERT INTO solution VALUES (1, 'Miranda Priestly');
SELECT value FROM solution;



