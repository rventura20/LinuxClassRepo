--find the murderer
--imprison the murderer
select * from crime_scene_report where date="20180115" and city="SQL City" and type="murder";
select * from person where address_street_name="Franklin Ave" and name like "%Annabel%";
select * from person where address_street_name="Northwestern Dr" order by address_number;
select * from interview where person_id="14887" or person_id="16371";
select * from get_fit_now_check_in where check_in_date="20180109" and membership_id like "%48Z%";
select * from get_fit_now_member where id="48Z7A" or id="48Z55" and membership_status="gold";
select * from interview where person_id="67318" or person_id="28819";
select * from facebook_event_checkin where event_name="SQL Symphony Concert" and date like "201712%";
select * from person where id="99716" or id="24556";
select * from income where ssn="987756388";
insert into solution values (1, 'Miranda Priestly');
select * from solution;
