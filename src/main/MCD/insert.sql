-- Insertions pour la table Client
INSERT INTO Client (nom, telephone, email, date_inscription) VALUES
                                                                 ('John Doe', '123456789', 'john.doe@example.com', CURRENT_DATE),
                                                                 ('Jane Smith', '987654321', 'jane.smith@example.com', CURRENT_DATE),
                                                                 ('Robert Johnson', '456789123', 'robert.johnson@example.com', CURRENT_DATE);

-- Insertions pour la table TypeOrdi
INSERT INTO TypeOrdi (val) VALUES
                               ('Portable'),
                               ('Desktop'),
                               ('Serveur');

-- Insertions pour la table Systeme
INSERT INTO Systeme (val) VALUES
                              ('Windows 10'),
                              ('Ubuntu 20.04'),
                              ('macOS Ventura');

-- Insertions pour la table TypeSpecialite
INSERT INTO TypeSpecialite (val) VALUES
                                     ('Hardware'),
                                     ('Software'),
                                     ('Network');

-- Insertions pour la table SalaireTechnicien
INSERT INTO SalaireTechnicien (salaire, date_salaire) VALUES
                                                          (2000.00, '2024-12-01'),
                                                          (2500.00, '2024-12-01'),
                                                          (1800.00, '2024-12-01');

-- Insertions pour la table TypeProbleme
INSERT INTO TypeProbleme (val) VALUES
                                   ('Ecran cassé'),
                                   ('Problème de démarrage'),
                                   ('Virus/Malware');

-- Insertions pour la table TypeComposant
INSERT INTO TypeComposant (val, description) VALUES
                                                 ('RAM', 'Mémoire vive'),
                                                 ('SSD', 'Disque SSD'),
                                                 ('CPU', 'Processeur');

-- Insertions pour la table Fournisseur
INSERT INTO Fournisseur (val) VALUES
                                  ('Tech Supplies Inc.'),
                                  ('Hardware Solutions'),
                                  ('Network Gear Ltd.');

-- Insertions pour la table Ordinateur
INSERT INTO Ordinateur (marque, modele, id_systeme, id_type_ordi, id_client) VALUES
                                                                                 ('Dell', 'XPS 15', (SELECT id_systeme FROM Systeme WHERE val='Windows 10'), (SELECT id_type_ordi FROM TypeOrdi WHERE val='Portable'), (SELECT id_client FROM Client WHERE nom='John Doe')),
                                                                                 ('HP', 'EliteBook', (SELECT id_systeme FROM Systeme WHERE val='Ubuntu 20.04'), (SELECT id_type_ordi FROM TypeOrdi WHERE val='Desktop'), (SELECT id_client FROM Client WHERE nom='Jane Smith'));

-- Insertions pour la table Technicien
INSERT INTO Technicien (nom, telephone, email, date_embauche, id_salaire_technicien, id_type_specialite) VALUES
                                                                                                             ('Alice Brown', '234567890', 'alice.brown@example.com', CURRENT_DATE, (SELECT id_salaire_technicien FROM SalaireTechnicien WHERE salaire=2000.00), (SELECT id_type_specialite FROM TypeSpecialite WHERE val='Hardware')),
                                                                                                             ('David Wilson', '345678901', 'david.wilson@example.com', CURRENT_DATE, (SELECT id_salaire_technicien FROM SalaireTechnicien WHERE salaire=2500.00), (SELECT id_type_specialite FROM TypeSpecialite WHERE val='Software'));

-- Insertions pour la table Reparation
INSERT INTO Reparation (date_reparation, description, status, prix_total, id_ordinateur) VALUES
                                                                                             (CURRENT_DATE, 'Réparation écran', 'P', 150.00, (SELECT id_ordinateur FROM Ordinateur WHERE marque='Dell')),
                                                                                             (CURRENT_DATE, 'Nettoyage malware', 'C', 80.00, (SELECT id_ordinateur FROM Ordinateur WHERE marque='HP'));

-- Insertions pour la table Probleme
INSERT INTO Probleme (description, id_type_probleme) VALUES
                                                         ('Ecran fissuré après chute', (SELECT id_type_probleme FROM TypeProbleme WHERE val='Ecran cassé')),
                                                         ('Lenteur après installation de logiciels suspects', (SELECT id_type_probleme FROM TypeProbleme WHERE val='Virus/Malware'));

-- Insertions pour la table Composant
INSERT INTO Composant (nom, prix_achat, prix_vente, id_type_composant) VALUES
                                                                           ('Barrette RAM 8GB', 50.00, 80.00, (SELECT id_type_composant FROM TypeComposant WHERE val='RAM')),
                                                                           ('SSD 512GB', 60.00, 100.00, (SELECT id_type_composant FROM TypeComposant WHERE val='SSD'));

-- Insertions pour la table Stock
INSERT INTO Stock (quantite_disponible, id_composant) VALUES
                                                          (10, (SELECT id_composant FROM Composant WHERE nom='Barrette RAM 8GB')),
                                                          (5, (SELECT id_composant FROM Composant WHERE nom='SSD 512GB'));

-- Insertions pour la table Achat
INSERT INTO Achat (date_achat, quantite, prix_unitaire, id_fournisseur, id_composant) VALUES
                                                                                          (CURRENT_DATE, 20, 50.00, (SELECT id_fournisseur FROM Fournisseur WHERE val='Tech Supplies Inc.'), (SELECT id_composant FROM Composant WHERE nom='Barrette RAM 8GB')),
                                                                                          (CURRENT_DATE, 10, 60.00, (SELECT id_fournisseur FROM Fournisseur WHERE val='Hardware Solutions'), (SELECT id_composant FROM Composant WHERE nom='SSD 512GB'));

-- Insertions pour la table ReparationDetails
INSERT INTO ReparationDetails (prix_reparation, quantite_utilisee, id_composant, id_technicien, id_probleme, id_reparation) VALUES
    (150.00, 1, (SELECT id_composant FROM Composant WHERE nom='Barrette RAM 8GB'), (SELECT id_technicien FROM Technicien WHERE nom='Alice Brown'), (SELECT id_probleme FROM Probleme WHERE description='Ecran fissuré après chute'), (SELECT id_reparation FROM Reparation WHERE description='Réparation écran'));

-- Insertions pour la table MvtStock
INSERT INTO MvtStock (date_mouvement, entree, sortie, type_mvt, id_achat, id_composant) VALUES
                                                                                            (CURRENT_DATE, 20, 0, 'Entree', (SELECT id_achat FROM Achat WHERE quantite=20), (SELECT id_composant FROM Composant WHERE nom='Barrette RAM 8GB')),
                                                                                            (CURRENT_DATE, 10, 0, 'Entree', (SELECT id_achat FROM Achat WHERE quantite=10), (SELECT id_composant FROM Composant WHERE nom='SSD 512GB')),
                                                                                            (CURRENT_DATE, 0, 1, 'Sortie', NULL, (SELECT id_composant FROM Composant WHERE nom='Barrette RAM 8GB'));





-- Insertion des données dans la table Composant
INSERT INTO Composant (val, img, prix_achat, prix_vente) VALUES
 ('Processeur', 'processeur.png', 150.00, 200.00),
 ('Mémoire RAM', 'memoire_ram.png', 40.00, 60.00),
 ('Disque dur', 'disque_dur.png', 50.00, 80.00),
 ('Carte graphique', 'carte_graphique.png', 250.00, 300.00),
 ('Disque HDD', 'HDD.png', 60.00, 80.00),
 ('Disque SSD', 'SDD.png', 80.00, 100.00);
