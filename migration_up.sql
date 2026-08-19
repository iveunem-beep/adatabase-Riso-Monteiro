
CREATE TYPE type_depot AS ENUM (
    'BOUTIQUE',
    'COLLECTE_DOMICILE'
);

CREATE TYPE type_etat_objet AS ENUM (
    'BON_ETAT',
    'A_REPARER',
    'HORS_SERVICE'
);

CREATE TYPE type_statut_objet AS ENUM (
    'ARRIVE',
    'EN_REPARATION',
    'EN_RAYON',
    'VENDU',
    'RECYCLE'
);

CREATE TYPE type_resultat_reparation AS ENUM (
    'REUSSIE',
    'ECHOUEE'
);

CREATE TYPE type_mode_paiement AS ENUM (
    'ESPECES',
    'CARTE',
    'CHEQUE'
);

CREATE TABLE Personne (
    id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    Nom VARCHAR(100) NOT NULL,
    Prenom VARCHAR(100) NOT NULL,
    Telephone VARCHAR(20) NOT NULL,
    EstAdherent BOOLEAN NOT NULL DEFAULT FALSE
);

CREATE TABLE Benevole (
    id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    Date_Entree_Association DATE NOT NULL,
    idPersonne BIGINT NOT NULL UNIQUE,

    FOREIGN KEY (idPersonne) REFERENCES Personne(id)
);

CREATE TABLE Depot (
    id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    DateDepot DATE NOT NULL,
    TypeDepot type_depot NOT NULL,
    idPersonne BIGINT NOT NULL,

    FOREIGN KEY (idPersonne) REFERENCES Personne(id)
);

CREATE TABLE Categorie (
    id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    LibelleCategorie VARCHAR(50) NOT NULL UNIQUE
);

CREATE TABLE Competence (
    id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    LibelleCompetence VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE Vente (
    id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    DateVente DATE NOT NULL,
    ModePaiement type_mode_paiement NOT NULL
);

CREATE TABLE Objet (
    id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    DesignationObjet VARCHAR(255) NOT NULL,

    PoidsObjet DECIMAL(8,2) NOT NULL
        CHECK (PoidsObjet > 0),

    EtatObjet type_etat_objet NOT NULL,

    StatutObjet type_statut_objet NOT NULL,

    PrixObjet DECIMAL(10,2)
        CHECK (PrixObjet >= 0),

    DateMiseRayon DATE,

    idDepot BIGINT NOT NULL,
    idCategorie BIGINT NOT NULL,

    FOREIGN KEY (idDepot) REFERENCES Depot(id),
    FOREIGN KEY (idCategorie) REFERENCES Categorie(id)
);

CREATE TABLE Reparation (
    id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    DateReparation DATE NOT NULL,

    DureeReparation DECIMAL(6,2) NOT NULL
        CHECK (DureeReparation > 0),

    ResultatReparation type_resultat_reparation NOT NULL,

    idBenevole BIGINT NOT NULL,
    idObjet BIGINT NOT NULL,

    FOREIGN KEY (idBenevole) REFERENCES Benevole(id),
    FOREIGN KEY (idObjet) REFERENCES Objet(id)
);

CREATE TABLE Atelier (
    id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    IntituleAtelier VARCHAR(255) NOT NULL,
    DateAtelier DATE NOT NULL,

    DureeAtelier DECIMAL(6,2) NOT NULL
        CHECK (DureeAtelier > 0),

    NombrePlaces INTEGER NOT NULL
        CHECK (NombrePlaces > 0),

    idBenevole BIGINT NOT NULL,

    FOREIGN KEY (idBenevole) REFERENCES Benevole(id)
);

CREATE TABLE Possede (
    idBenevole BIGINT NOT NULL,
    idCompetence BIGINT NOT NULL,

    PRIMARY KEY (idBenevole, idCompetence),

    FOREIGN KEY (idBenevole) REFERENCES Benevole(id),
    FOREIGN KEY (idCompetence) REFERENCES Competence(id)
);

CREATE TABLE LigneVente (
    idVente BIGINT NOT NULL,
    idObjet BIGINT NOT NULL,

    PrixReelPaye DECIMAL(10,2) NOT NULL
        CHECK (PrixReelPaye >= 0),

    PRIMARY KEY (idVente, idObjet),

    FOREIGN KEY (idVente) REFERENCES Vente(id),
    FOREIGN KEY (idObjet) REFERENCES Objet(id)
);

CREATE TABLE Inscription (
    idPersonne BIGINT NOT NULL,
    idAtelier BIGINT NOT NULL,
    DateInscription DATE NOT NULL,
    Presence BOOLEAN,

    PRIMARY KEY (idPersonne, idAtelier),

    FOREIGN KEY (idPersonne) REFERENCES Personne(id),
    FOREIGN KEY (idAtelier) REFERENCES Atelier(id)
);