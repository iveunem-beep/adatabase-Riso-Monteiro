
INSERT INTO Personne (id, Nom, Prenom, Telephone, EstAdherent)
OVERRIDING SYSTEM VALUE
VALUES
(1,'Dupont','Marie','0601020304',TRUE),
(2,'Martin','Jean','0605060708',FALSE),
(3,'Durand','Sofia','0611223344',TRUE),
(4,'Bernard','Luc','0677889900',TRUE),
(5,'Petit','Emma','0644556677',FALSE),
(6,'Robert','Hugo','0612345678',TRUE),
(7,'Richard','Lina','0699887766',FALSE),
(8,'Moreau','Adam','0633221100',TRUE),
(9,'Fournier','Nora','0655443322',TRUE),
(10,'Girard','Leo','0622113344',FALSE),
(11,'Bonnet','Sarah','0688776655',TRUE),
(12,'Roux','Tom','0677665544',FALSE),
(13,'Collet','Ines','0611998877',TRUE),
(14,'Fontaine','Elias','0644332211',TRUE),
(15,'Chevalier','Maya','0655332211',FALSE),
(16,'Lambert','Noah','0677001122',TRUE),
(17,'Muller','Jade','0699112233',TRUE),
(18,'Lefevre','Paul','0622003344',FALSE),
(19,'Legrand','Lola','0611220033',TRUE),
(20,'Garnier','Evan','0644667788',FALSE),
(21,'Marchand','Clara','0688991122',TRUE),
(22,'Barbier','Yanis','0677554433',TRUE);

INSERT INTO Benevole (id, Date_Entree_Association, idPersonne)
OVERRIDING SYSTEM VALUE
VALUES
(1,'2023-02-14',3),
(2,'2023-03-01',7),
(3,'2023-03-22',11),
(4,'2023-04-10',14),
(5,'2023-05-03',1),
(6,'2023-05-27',19),
(7,'2023-06-15',5),
(8,'2023-07-02',22),
(9,'2023-07-19',9),
(10,'2023-08-08',16),
(11,'2023-09-01',12),
(12,'2023-09-20',4);

INSERT INTO Depot (id, DateDepot, TypeDepot, idPersonne)
OVERRIDING SYSTEM VALUE
VALUES
(1,'2024-01-05','BOUTIQUE',3),
(2,'2024-01-08','COLLECTE_DOMICILE',7),
(3,'2024-01-12','BOUTIQUE',11),
(4,'2024-01-15','BOUTIQUE',14),
(5,'2024-01-18','COLLECTE_DOMICILE',1),
(6,'2024-01-22','BOUTIQUE',19),
(7,'2024-01-27','BOUTIQUE',5),
(8,'2024-02-01','BOUTIQUE',22),
(9,'2024-02-04','COLLECTE_DOMICILE',9),
(10,'2024-02-08','BOUTIQUE',16),
(11,'2024-02-12','BOUTIQUE',12),
(12,'2024-02-16','COLLECTE_DOMICILE',4),
(13,'2024-02-20','BOUTIQUE',3),
(14,'2024-02-25','BOUTIQUE',7),
(15,'2024-03-01','COLLECTE_DOMICILE',11),
(16,'2024-03-05','BOUTIQUE',14),
(17,'2024-03-09','BOUTIQUE',1),
(18,'2024-03-13','BOUTIQUE',19),
(19,'2024-03-17','COLLECTE_DOMICILE',5),
(20,'2024-03-21','BOUTIQUE',22),
(21,'2024-03-25','BOUTIQUE',9),
(22,'2024-03-29','COLLECTE_DOMICILE',16),
(23,'2024-04-02','BOUTIQUE',12),
(24,'2024-04-06','BOUTIQUE',4),
(25,'2024-04-10','COLLECTE_DOMICILE',3),
(26,'2024-04-14','BOUTIQUE',7),
(27,'2024-04-18','BOUTIQUE',11),
(28,'2024-04-22','COLLECTE_DOMICILE',14),
(29,'2024-04-26','BOUTIQUE',1),
(30,'2024-04-30','BOUTIQUE',19),
(31,'2024-05-04','COLLECTE_DOMICILE',5),
(32,'2024-05-08','BOUTIQUE',22),
(33,'2024-05-12','BOUTIQUE',9),
(34,'2024-05-16','COLLECTE_DOMICILE',16),
(35,'2024-05-20','BOUTIQUE',12),
(36,'2024-05-24','BOUTIQUE',4),
(37,'2024-05-28','COLLECTE_DOMICILE',3),
(38,'2024-06-01','BOUTIQUE',7),
(39,'2024-06-05','BOUTIQUE',11),
(40,'2024-06-09','COLLECTE_DOMICILE',14);

INSERT INTO Categorie (id, LibelleCategorie)
OVERRIDING SYSTEM VALUE
VALUES
(1,'mobilier'),
(2,'electromenager'),
(3,'livres'),
(4,'vaisselle'),
(5,'textile'),
(6,'jouets'),
(7,'bricolage'),
(8,'informatique');

INSERT INTO Objet (id, DesignationObjet, PoidsObjet, EtatObjet, StatutObjet, PrixObjet, DateMiseRayon, idDepot, idCategorie)
OVERRIDING SYSTEM VALUE
VALUES
(1,'Chaise bois',4.2,'BON_ETAT','EN_RAYON',12.00,'2024-01-10',1,1),
(2,'Grille-pain',1.1,'A_REPARER','EN_REPARATION',NULL,NULL,2,2),
(3,'Livre roman',0.3,'BON_ETAT','VENDU',2.00,'2024-01-15',3,3),
(4,'Lampe bureau',0.9,'A_REPARER','RECYCLE',NULL,NULL,4,2),
(5,'Table basse',8.5,'BON_ETAT','EN_RAYON',25.00,'2024-01-20',5,1),
(6,'Mixer cuisine',2.0,'HORS_SERVICE','RECYCLE',NULL,NULL,6,2),
(7,'Peluche ours',0.4,'BON_ETAT','VENDU',1.00,'2024-01-28',7,6),
(8,'Roman jeunesse',0.2,'BON_ETAT','EN_RAYON',1.50,'2024-02-03',8,3),
(9,'Chaise métal',5.0,'A_REPARER','EN_REPARATION',NULL,NULL,9,1),
(10,'Veste jean',0.7,'BON_ETAT','EN_RAYON',8.00,'2024-02-10',10,5),
(11,'Jeu société',1.2,'BON_ETAT','VENDU',5.00,'2024-02-14',11,6),
(12,'Perceuse',2.3,'A_REPARER','EN_REPARATION',NULL,NULL,12,7),
(13,'Livre cuisine',0.4,'BON_ETAT','EN_RAYON',3.00,'2024-02-22',13,3),
(14,'Chaise enfant',3.1,'BON_ETAT','VENDU',6.00,'2024-02-28',14,1),
(15,'Radio ancienne',1.8,'HORS_SERVICE','RECYCLE',NULL,NULL,15,2),
(16,'T-shirt coton',0.2,'BON_ETAT','EN_RAYON',2.00,'2024-03-03',16,5),
(17,'Roman policier',0.3,'BON_ETAT','VENDU',2.50,'2024-03-05',17,3),
(18,'Lampe halogène',1.0,'A_REPARER','EN_REPARATION',NULL,NULL,18,2),
(19,'Pantalon',0.5,'BON_ETAT','EN_RAYON',4.00,'2024-03-10',19,5),
(20,'Puzzle 1000 pièces',0.6,'BON_ETAT','VENDU',3.00,'2024-03-12',20,6),
(21,'Chaise pliante',2.8,'BON_ETAT','EN_RAYON',10.00,'2024-03-20',21,1),
(22,'Mixer',1.9,'A_REPARER','RECYCLE',NULL,NULL,22,2),
(23,'Livre BD',0.3,'BON_ETAT','EN_RAYON',2.00,'2024-03-25',23,3),
(24,'Lampe LED',0.7,'BON_ETAT','VENDU',4.00,'2024-03-28',24,2),
(25,'Chaise bureau',6.0,'A_REPARER','EN_REPARATION',NULL,NULL,25,1),
(26,'Jeu cartes',0.2,'BON_ETAT','EN_RAYON',1.00,'2024-04-02',26,6),
(27,'Roman historique',0.4,'BON_ETAT','VENDU',3.00,'2024-04-05',27,3),
(28,'Lampe vintage',1.3,'A_REPARER','RECYCLE',NULL,NULL,28,2),
(29,'Table bois',9.0,'BON_ETAT','EN_RAYON',30.00,'2024-04-10',29,1),
(30,'Mixer cuisine',2.1,'HORS_SERVICE','RECYCLE',NULL,NULL,30,2),
(31,'Peluche lapin',0.3,'BON_ETAT','VENDU',1.50,'2024-04-15',31,6),
(32,'Roman SF',0.3,'BON_ETAT','EN_RAYON',2.50,'2024-04-18',32,3),
(33,'Chaise bois',4.0,'BON_ETAT','VENDU',12.00,'2024-04-20',33,1),
(34,'Lampe bureau',1.0,'A_REPARER','EN_REPARATION',NULL,NULL,34,2),
(35,'Veste cuir',0.9,'BON_ETAT','EN_RAYON',15.00,'2024-04-25',35,5),
(36,'Jeu puzzle',0.5,'BON_ETAT','VENDU',3.00,'2024-04-28',36,6),
(37,'Roman fantasy',0.3,'BON_ETAT','EN_RAYON',2.00,'2024-05-01',37,3),
(38,'Lampe murale',0.8,'A_REPARER','RECYCLE',NULL,NULL,38,2),
(39,'Chaise métal',5.2,'BON_ETAT','EN_RAYON',14.00,'2024-05-05',39,1),
(40,'Mixer',2.0,'HORS_SERVICE','RECYCLE',NULL,NULL,40,2);

INSERT INTO Reparation (id, DateReparation, DureeReparation, ResultatReparation, idBenevole, idObjet)
OVERRIDING SYSTEM VALUE
VALUES
(1,'2024-02-10',1.5,'REUSSIE',1,2),
(2,'2024-02-12',2.0,'ECHOUEE',6,9),
(3,'2024-02-15',3.0,'REUSSIE',8,12),
(4,'2024-03-01',1.0,'REUSSIE',4,18),
(5,'2024-03-05',2.5,'ECHOUEE',12,25),
(6,'2024-03-10',1.2,'REUSSIE',1,34),
(7,'2024-03-12',2.8,'REUSSIE',6,9),
(8,'2024-03-15',1.7,'ECHOUEE',3,2),
(9,'2024-03-18',2.0,'REUSSIE',4,12),
(10,'2024-03-20',3.0,'REUSSIE',8,18),
(11,'2024-03-25',1.0,'ECHOUEE',12,25),
(12,'2024-03-28',2.2,'REUSSIE',1,34),
(13,'2024-04-01',1.5,'REUSSIE',6,9),
(14,'2024-04-05',2.0,'ECHOUEE',3,2),
(15,'2024-04-10',2.5,'REUSSIE',4,12);

INSERT INTO Vente (id, DateVente, ModePaiement)
OVERRIDING SYSTEM VALUE
VALUES
(1,'2024-01-15','ESPECES'),
(2,'2024-02-14','CARTE'),
(3,'2024-02-28','CHEQUE'),
(4,'2024-03-05','CARTE'),
(5,'2024-03-12','ESPECES'),
(6,'2024-03-28','CARTE'),
(7,'2024-04-05','ESPECES'),
(8,'2024-04-15','CARTE'),
(9,'2024-04-28','CHEQUE'),
(10,'2024-05-05','ESPECES');

INSERT INTO LigneVente (idVente, idObjet, PrixReelPaye) VALUES
(1,3,2.00),
(2,11,5.00),
(3,14,6.00),
(4,17,2.50),
(5,20,3.00),
(6,24,4.00),
(7,27,3.00),
(8,31,1.50),
(9,36,3.00),
(10,33,12.00);


INSERT INTO Atelier (id, IntituleAtelier, DateAtelier, DureeAtelier, NombrePlaces, idBenevole)
OVERRIDING SYSTEM VALUE
VALUES
(1,'Répare ton grille-pain','2024-03-10',2.0,10,1),
(2,'Initiation couture','2024-04-05',3.0,12,3),
(3,'Retaper un meuble','2024-05-12',4.0,8,4),
(4,'Découverte bricolage','2024-06-20',2.5,15,12);

INSERT INTO Inscription (idPersonne, idAtelier, DateInscription, Presence) VALUES
(1,1,'2024-03-01',TRUE),
(2,1,'2024-03-02',FALSE),
(3,1,'2024-03-05',TRUE),
(4,2,'2024-03-28',TRUE),
(5,2,'2024-03-30',NULL),
(6,2,'2024-04-01',FALSE),
(7,3,'2024-05-01',TRUE),
(8,3,'2024-05-03',TRUE),
(9,4,'2024-06-10',FALSE),
(10,4,'2024-06-12',TRUE);

INSERT INTO Competence (id, LibelleCompetence)
OVERRIDING SYSTEM VALUE
VALUES
(1,'couture'),
(2,'electricite'),
(3,'menuiserie'),
(4,'informatique'),
(5,'vente'),
(6,'bricolage'),
(7,'reparation_electromenager'),
(8,'retape_meuble');

INSERT INTO Possede (idBenevole, idCompetence) VALUES
(1,2),(1,7),
(2,5),
(3,1),(3,4),
(4,3),(4,8),
(5,6),
(6,2),(6,6),
(7,1),
(8,7),
(9,5),
(10,3),
(11,4),
(12,6),(12,8);
