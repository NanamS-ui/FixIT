-- Ordre des suppressions pour respecter les contraintes d'intégrité référentielle

-- Suppression des enregistrements dans les tables enfant d'abord
DELETE FROM MvtStock;
DELETE FROM ReparationDetails;
DELETE FROM Achat;
DELETE FROM Stock;
DELETE FROM Probleme;
DELETE FROM Reparation;
DELETE FROM Technicien;
DELETE FROM Ordinateur;
DELETE FROM Composant;

-- Suppression des enregistrements dans les tables parent ensuite
DELETE FROM Systeme;
DELETE FROM TypeOrdi;
DELETE FROM TypeSpecialite;
DELETE FROM SalaireTechnicien;
DELETE FROM TypeProbleme;
DELETE FROM TypeComposant;
DELETE FROM Fournisseur;
DELETE FROM Client;
