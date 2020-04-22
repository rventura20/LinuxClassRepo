select * from crime_scene_report where date="20180115" and city="SQL City" and type="murder";

select * from person where address_street_name="Franklin Ave" and name like "Annabel%";

select * from person where address_street_name="Northwestern Dr" order by address_number asc;

select * from interview where person_id="14887" or person_id="16371";

select * from interview where person_id="67318" or person_id="28819";

select * from get_fit_now_check_in where check_in_date="20180109";

select * from get_fit_now_member where id="48Z7A" or id="48Z55";

select * from facebook_event_checkin where event_name="SQL Symphony Concert";

select * from person where id="99716" or id="24556";

select * from income where ssn="987756388" or ssn="816663882";

INSERT INTO solution VALUES (1, 'Jeremy Bowers');SELECT value FROM solution;

INSERT INTO solution VALUES (1, 'Miranda Priestly');SELECT value FROM solution;

