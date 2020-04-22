SELECT * FROM person WHERE address_street_name = "Northwestern Dr" ORDER BY address_number DESC LIMIT (SELECT COUNT(*) FROM person GROUP BY address_number ORDER BY address_number DESC LIMIT 1);
