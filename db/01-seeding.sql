-- debut de la transaction
BEGIN;

-- on vide la table avant de remettre des choses dedans
-- on ne peut pas vider une table référencée dans une contrainte de référence dans une autre table
-- à moins de vider les 2 tables en même temps
TRUNCATE TABLE "rent", "agency", "car", "user";

INSERT INTO "user" ("id", "email","phone number","password","firstname", "lastname") VALUES
    ();

INSERT INTO "car" ("id","brand", "model", "power", "zero_to_100","max_speed", "eco_class","price") VALUES 
    ();

INSERT INTO "agency" ("id", "email", "address", "phone_number") VALUES
('O''To Rent Paris','paris@oto-rent.com', '214 Rue de Maubeuge 75001 Paris',
'+33 1 23 45 67 89');
( 'O''To Rent Nantes', 'nantes@oto-rent.com', '214 Rue de Paris 44000 Nantes', '+33 1 23 45 67 89');
('O''To Rent Strasbourg', '214 Rue de Bordeaux 67000 Strasbourg','strasbourg@oto-rent.com', '+33 1 23 45 67 89');
('O''To Rent Lyon', 'lyon@oto-rent.com', '214 Rue de Rennes 69000 Lyon', '+33 1 23 45 67 89');
('O''To Rent Marseille', 'marseille@oto-rent.com','214 Rue de Toulouse 13000 Marseille', '+33 1 23 45 67 89');
('O''To Rent Toulouse', 'toulouse@oto-rent.com','214 Rue de Vanne 31000 Toulouse', '+33 1 23 45 67 89');

INSERT INTO "rent" ("id","date_start","date_end", "user_id", "car_id") VALUES
();

COMMIT;