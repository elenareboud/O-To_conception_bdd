-- debut de la transaction
BEGIN;

-- on vide la table avant de remettre des choses dedans
-- on ne peut pas vider une table référencée dans une contrainte de référence dans une autre table
-- à moins de vider les 2 tables en même temps
TRUNCATE TABLE  "agency" CASCADE;

INSERT INTO "agency" ("email", "address", "phone_number") VALUES
('paris@oto-rent.com', '214 Rue de Maubeuge 75001 Paris', '+33 1 23 45 67 89'),
('nantes@oto-rent.com', '214 Rue de Paris 44000 Nantes', '+33 1 23 45 67 89'),
('strasbourg@oto-rent.com', '214 Rue de Bordeaux 67000 Strasbourg', '+33 1 23 45 67 89'),
('lyon@oto-rent.com', '214 Rue de Rennes 69000 Lyon', '+33 1 23 45 67 89'),
('marseille@oto-rent.com','214 Rue de Toulouse 13000 Marseille', '+33 1 23 45 67 89'),
('toulouse@oto-rent.com','214 Rue de Vanne 31000 Toulouse', '+33 1 23 45 67 89');

COMMIT;
