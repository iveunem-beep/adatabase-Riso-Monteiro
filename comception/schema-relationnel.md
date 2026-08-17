# Schéma relationnel
## R1 — Transformation des entités

Personne(
  NumPersonne,
  NomPersonne,
  PrenomPersonne,
  TelephonePersonne,
  EstAdherent
)
→ R1 : transformation de l'entité Personne en relation.

Benevole(
  NumBenevole,
  DateEntreeAssociation
)
→ R1 : transformation de l'entité Benevole en relation.

Depot(
  NumDepot,
  DateDepot,
  TypeDepot,
  #numPersonne
)
→ R1 : transformation de l'entité Depot en relation.
→ R2 : l'association « effectue » est de type 1,N.
La clé de Personne migre dans Depot.

Objet(
  NumObjet,
  DesignationObjet,
  PoidsObjet,
  EtatObjet,
  StatutObjet,
  PrixObjet,
  DateMiseRayon,
  #NumDepot
)
→ R1 : transformation de l'entité Objet en relation.
→ R2 : l'association « contient » est de type 1,N.
La clé de Depot migre dans Objet.

Categorie(
  NumCategorie,
  LibelleCategorie
)
→ R1 : transformation de l'entité Categorie en relation.

Reparation(
  NumReparation,
  DateReparation,
  DureeReparation,
  ResultatReparation
)
→ R1 : transformation de l'entité Reparation en relation.

Competence(
  NumCompetence,
  LibelleCompetence
)
→ R1: transformation de l'entité Competence en relation.

Vente(
  NumVente,
  DateVente,
  ModePaiement
)
→ R1: transformation de l'entité Vente en relation.

Atelier(
  NumAtelier,
  IntituleAtelier,
  DateAtelier,
  DureeAtelier,
  NombrePlaces
)
→ R1: transformation de l'entité Atelier en relation.

Inscription(
  NumInscription,
  DateInscription,
  Presence
)
→ R1 : transformation de l'entité Inscription en relation.

LigneVente(
  NumLigneVente,
  PrixReelPaye
)
→ R1 : transformation de l'entité LigneVente en relation.