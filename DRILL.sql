SELECT * FROM villes_france_free
ORDER BY "ville_population_2012" DESC LIMIT 10;

SELECT * FROM villes_france_free
ORDER BY "ville_surface" ASC LIMIT 50;

SELECT * FROM departement
WHERE "departement_code" LIKE "97%";

SELECT * FROM villes_france_free
INNER JOIN departement ON "departement_code"="ville_departement"
ORDER BY "ville_population_2012" DESC LIMIT 10;

SELECT "departement_nom", "ville_departement", COUNT(*) AS "nbr_items"FROM villes_france_free
INNER JOIN departement ON "departement_code" = "ville_departement"
GROUP BY "ville_departement"
ORDER BY "nbr_items" DESC;

