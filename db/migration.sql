-- Début de la transaction : l'interet est que si je fais 
-- une erreur, c'est comme si rien n'était executé, par contre,
-- si tout va bien c'est ok
BEGIN;

DROP TABLE IF EXISTS "car_has_user"; -- En premier, car elle dépend de "user" et "car"
DROP TABLE IF EXISTS "car";          -- Ensuite, car elle dépend de "agency"
DROP TABLE IF EXISTS "user", "agency";  -- En dernier, ces tables peuvent être supprimées 
                                        -- ensemble car elles ne dépendent pas d'autres tables dans cette commande

CREATE TABLE "user" (
  "id" INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  "email" TEXT UNIQUE NOT NULL,
  "password" TEXT NOT NULL,
  "firstname" TEXT,
  "lastname" TEXT
);  

CREATE TABLE "agency" (
  "id" INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  "email" TEXT,
  "address" TEXT NOT NULL,
  "phone_number" TEXT
);

CREATE TABLE "car" (
  "id" INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  "brand" TEXT,
  "model" TEXT NOT NULL,
  "power" SMALLINT,
  "zero_to_100" SMALLINT,  
  "max_speed" SMALLINT,
  "eco_class" TEXT,
  "price" INTEGER,
  "agency_id" INTEGER REFERENCES "agency"("id") NOT NULL
);

CREATE TABLE "car_has_user" (
  "id" INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  "user_id" INTEGER REFERENCES "user"("id") NOT NULL,
  "car_id" INTEGER REFERENCES "car"("id") NOT NULL,
  "date_start" TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  "date_end" TIMESTAMPTZ
);

COMMIT;