Murder Mystery queries

1.	SELECT * FROM crime_scene_report WHERE date="20180115" and city="SQL City" and type="Murder";
2.	SELECT * FROM person WHERE address_street_name="Franklin Ave" and name like "Annabel";
3.	SELECT * FROM person WHERE address_street_name="Northwestern Dr" order by address_number desc limit 1;
4.	SELECT * FROM interview WHERE person_id="16371";
5.	SELECT * FROM interview WHERE person_id="14887";
6.	SELECT * FROM get_fit_now_member WHERE id like "%48x%";
7.	SELECT transcript FROM interview WHERE person_id="67318";
8.	SELECT * FROM facebook_event_checkin;
9.	SELECT * FROM person WHERE id="24556";
10.	SELECT * FROM person WHERE id="99716";
11.	SELECT * FROM income WHERE ssn="987756388";

//Shows who the murderer is, who hired him, and also how much her income is. 
