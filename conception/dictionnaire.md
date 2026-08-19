# Dictionnaire de données — La Remise

## Personne

| Nom | Type | Taille | Contraintes |
|---|---|---|---|
| NumPersonne | BIGINT | — | Identifiant, obligatoire, unique, automatique |
| NomPersonne | VARCHAR | 100 | Obligatoire |
| PrenomPersonne | VARCHAR | 100 | Obligatoire |
| TelephonePersonne | VARCHAR | 20 | Obligatoire |
| EstAdherent | BOOLEAN | — | Obligatoire, défaut : FALSE |

### Remarques

- `NumPersonne` identifie une personne indépendamment de ses différents rôles.
- `TelephonePersonne` est stocké sous forme de texte car aucun calcul n'est effectué dessus.
- `EstAdherent` : TRUE = adhérente, FALSE = non adhérente.


## Benevole

| Nom | Type | Taille | Contraintes |
|---|---|---|---|
| NumBenevole | BIGINT | — | Identifiant, obligatoire, unique, automatique |
| DateEntreeAssociation | DATE | — | Obligatoire |

### Remarques

- Un bénévole correspond également à une personne.
- `DateEntreeAssociation` est une information propre au rôle de bénévole.


## Depot

| Nom | Type | Taille | Contraintes |
|---|---|---|---|
| NumDepot | BIGINT | — | Identifiant, obligatoire, unique, automatique |
| DateDepot | DATE | — | Obligatoire |
| TypeDepot | ENUM | — | Obligatoire |

### Remarques

- Un dépôt est effectué par une seule personne.
- `TypeDepot` peut prendre les valeurs `boutique` ou `domicile`.


## Objet

| Nom | Type | Taille | Contraintes |
|---|---|---|---|
| NumObjet | BIGINT | — | Identifiant, obligatoire, unique, automatique |
| DesignationObjet | VARCHAR | 255 | Obligatoire |
| PoidsObjet | DECIMAL | 8,2 | Obligatoire, supérieur à 0 |
| EtatObjet | ENUM | — | Obligatoire |
| StatutObjet | ENUM | — | Obligatoire |
| PrixObjet | DECIMAL | 10,2 | Facultatif, supérieur ou égal à 0 |
| DateMiseRayon | DATE | — | Facultatif |

### Remarques

- `NumObjet` correspond au numéro figurant sur l'étiquette de l'objet.
- `DesignationObjet` : par exemple chaise, grille-pain, livre.
- `PoidsObjet` est exprimé en kilogrammes.
- `EtatObjet` : `bon_etat`, `a_reparer`, `hors_service`.
- `StatutObjet` : `arrive`, `en_reparation`, `en_rayon`, `vendu`, `recycle`.
- `PrixObjet` peut être NULL tant que l'objet n'est pas mis en vente.
- `DateMiseRayon` permet notamment de détecter les objets présents en rayon depuis plus de six mois.


## Categorie

| Nom | Type | Taille | Contraintes |
|---|---|---|---|
| NumCategorie | BIGINT | — | Identifiant, obligatoire, unique, automatique |
| LibelleCategorie | VARCHAR | 50 | Obligatoire, unique |

### Remarques

- Une catégorie peut regrouper plusieurs objets.
- Exemples : mobilier, électroménager, livres, vaisselle, textile, jouets, bricolage.


## Reparation

| Nom | Type | Taille | Contraintes |
|---|---|---|---|
| NumReparation | BIGINT | — | Identifiant, obligatoire, unique, automatique |
| DateReparation | DATE | — | Obligatoire |
| DureeReparation | DECIMAL | 6,2 | Obligatoire, supérieure à 0 |
| ResultatReparation | ENUM | — | Obligatoire |

### Remarques

- Un objet peut faire l'objet de plusieurs réparations.
- `DureeReparation` est exprimée en heures et permet de calculer les heures de bénévolat.
- `ResultatReparation` : `reussie` ou `echouee`.


## Competence

| Nom | Type | Taille | Contraintes |
|---|---|---|---|
| NumCompetence | BIGINT | — | Identifiant, obligatoire, unique, automatique |
| LibelleCompetence | VARCHAR | 100 | Obligatoire, unique |

### Remarques

- Exemples : couture, électricité, menuiserie, informatique, vente.
- Un bénévole peut posséder plusieurs compétences.
- Une compétence peut être possédée par plusieurs bénévoles.


## Vente

| Nom | Type | Taille | Contraintes |
|---|---|---|---|
| NumVente | BIGINT | — | Identifiant, obligatoire, unique, automatique |
| DateVente | DATE | — | Obligatoire |
| ModePaiement | ENUM | — | Obligatoire |

### Remarques

- Une vente peut concerner plusieurs objets.
- `ModePaiement` : `especes`, `carte` ou `cheque`.


## EstVendu

| Nom | Type | Taille | Contraintes |
|---|---|---|---|
| PrixReelPaye | DECIMAL | 10,2 | Obligatoire, supérieur ou égal à 0 |

### Remarques

- `EstVendu` représente l'association entre un objet et une vente.
- `PrixReelPaye` correspond au prix réellement payé pour l'objet lors de la vente.
- Le prix réellement payé peut être différent du prix affiché de l'objet.


## Atelier

| Nom | Type | Taille | Contraintes |
|---|---|---|---|
| NumAtelier | BIGINT | — | Identifiant, obligatoire, unique, automatique |
| IntituleAtelier | VARCHAR | 255 | Obligatoire |
| DateAtelier | DATE | — | Obligatoire |
| DureeAtelier | DECIMAL | 6,2 | Obligatoire, supérieure à 0 |
| NombrePlaces | INTEGER | — | Obligatoire, strictement supérieur à 0 |

### Remarques

- Deux ateliers peuvent avoir le même intitulé à des dates différentes.
- `DureeAtelier` est exprimée en heures.
- `NombrePlaces` représente la capacité maximale de l'atelier.
- Un atelier est animé par un bénévole.


## Inscription

| Nom | Type | Taille | Contraintes |
|---|---|---|---|
| DateInscription | DATE | — | Obligatoire |
| Presence | BOOLEAN | — | Peut être NULL avant l'atelier |

### Remarques

- `Inscription` représente l'association entre une personne et un atelier.
- `DateInscription` correspond à la date à laquelle la personne s'est inscrite.
- `Presence` indique si la personne inscrite a réellement participé à l'atelier.
- `Presence` : TRUE = présente, FALSE = absente, NULL = présence encore inconnue.