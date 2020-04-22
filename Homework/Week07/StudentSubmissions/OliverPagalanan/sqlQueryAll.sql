SELECT * FROM crime_scene_report WHERE date="20180115" AND city="SQL City" AND type="murder";

SELECT * FROM person WHERE name LIKE "Annabel%" AND address_street_name="Franklin Ave";

SELECT * FROM person WHERE address_street_name="Northwestern Dr" ORDER BY address_number DESC limit 1;

SELECT * FROM interview WHERE person_id="16371" OR person_id="14887";

SELECT * FROM get_fit_now_member JOIN get_fit_now_check_in ON get_fit_now_member.id=get_fit_now_check_in.membership_id WHERE membership_id LIKE "48Z%" AND check_in_date="20180109";

SELECT * FROM person WHERE id="28819" OR id="67318";

SELECT * FROM drivers_license WHERE id="173289" OR id="423327";

SELECT * FROM person JOIN drivers_license ON person.license_id=drivers_license.id WHERE plate_number LIKE "%H42W%" AND drivers_license.id="173289" OR drivers_license.id="423327";

INSERT INTO solution VALUES (1, Jeremy Bowers);

SELECT value FROM solution;

SELECT * FROM interview WHERE person_id="67318";

SELECT *, COUNT(person_id) AS times_attended FROM person JOIN drivers_license JOIN facebook_event_checkin ON person.license_id=drivers_license.id AND person.id=facebook_event_checkin.person_id WHERE height BETWEEN 65 AND 67 AND hair_color="red" AND car_make="Tesla" AND car_model="Model S" AND event_name="SQL Symphony Concert" AND date LIKE "201712%" GROUP BY person_id HAVING COUNT(person_id)=3;

INSERT INTO solution VALUES (1, 'Miranda Priestly');

SELECT value FROM solution;

