# Schéma relationnel

## R1 — Transformation des entités

Personne(
*NumPersonne*,
NomPersonne,
PrenomPersonne,
TelephonePersonne,
EstAdherent
)

→ R1 : transformation de l'entité Personne en relation.

Benevole(
*NumBenevole*,
DateEntreeAssociation,
#NumPersonne
)

→ R1 : transformation de l'entité Benevole en relation.
→ R2 : l'association « est » est de type 1,1.
La clé de Personne migre dans Benevole.

Depot(
*NumDepot*,
DateDepot,
TypeDepot,
#NumPersonne
)

→ R1 : transformation de l'entité Depot en relation.
→ R2 : l'association « effectue » est de type 1,N.
La clé de Personne migre dans Depot.

Objet(
*NumObjet*,
DesignationObjet,
PoidsObjet,
EtatObjet,
StatutObjet,
PrixObjet,
DateMiseRayon,
#NumDepot,
#NumCategorie
)

→ R1 : transformation de l'entité Objet en relation.
→ R2 : l'association « contient » est de type 1,N.
La clé de Depot migre dans Objet.

→ R2 : l'association « appartient à » est de type 1,N.
La clé de Categorie migre dans Objet.

Categorie(
*NumCategorie*,
LibelleCategorie
)

→ R1 : transformation de l'entité Categorie en relation.

Reparation(
*NumReparation*,
DateReparation,
DureeReparation,
ResultatReparation,
#NumBenevole,
#NumObjet
)

→ R1 : transformation de l'entité Reparation en relation.
→ R2 : l'association « réalise » est de type 1,N.
La clé de Benevole migre dans Reparation.

→ R2 : l'association « fait l'objet de » est de type 1,N.
La clé de Objet migre dans Reparation.

Competence(
*NumCompetence*,
LibelleCompetence
)

→ R1 : transformation de l'entité Competence en relation.

Vente(
*NumVente*,
DateVente,
ModePaiement
)

→ R1 : transformation de l'entité Vente en relation.

Atelier(
*NumAtelier*,
IntituleAtelier,
DateAtelier,
DureeAtelier,
NombrePlaces,
#NumBenevole
)

→ R1 : transformation de l'entité Atelier en relation.
→ R2 : l'association « anime » est de type 1,N.
La clé de Benevole migre dans Atelier.

## R3 — Transformation des associations

Possede(
*#NumBenevole*,
*#NumCompetence*
)

→ R3 : l'association « possède » est de type N,N.
Elle devient une nouvelle relation Possede.
Les clés de Benevole et Competence deviennent des clés étrangères et forment ensemble la clé primaire de Possede.

Inscription(
*#NumPersonne*,
*#NumAtelier*,
DateInscription,
Presence
)

→ R3 : l'association « s'inscrit à » est de type N,N et possède les propriétés DateInscription et Presence.
Elle devient une nouvelle relation Inscription.
Les clés de Personne et Atelier deviennent des clés étrangères et forment ensemble la clé primaire de Inscription.

LigneVente(
*#NumVente*,
*#NumObjet*,
PrixReelPaye
)

→ R3 : l'association « est vendu » entre Vente et Objet devient une nouvelle relation LigneVente.
Les clés de Vente et Objet deviennent des clés étrangères et forment ensemble la clé primaire de LigneVente.
PrixReelPaye est une propriété de l'association.
