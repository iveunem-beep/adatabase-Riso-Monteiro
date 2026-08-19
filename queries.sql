-- -- Combien d'objets avons-nous reçus le mois dernier, et quel poids total ?
-- WITH mois AS (
--     SELECT DISTINCT date_trunc('month', DateDepot) AS m
--     FROM Depot
-- ),
-- mois_tries AS (
--     SELECT m, LAG(m) OVER (ORDER BY m) AS mois_precedent
--     FROM mois
-- )
-- SELECT COUNT(o.id) AS nb_objets,
--        SUM(o.PoidsObjet) AS poids_total
-- FROM Objet o
-- JOIN Depot d ON o.idDepot = d.id
-- JOIN mois_tries mt ON date_trunc('month', d.DateDepot) = mt.mois_precedent
-- WHERE mt.mois_precedent IS NOT NULL;



-- -- Quels objets sont actuellement en rayon, et depuis combien de temps ?
-- SELECT o.id,
--        o.DesignationObjet,
--        o.DateMiseRayon,
--        (current_date - o.DateMiseRayon) AS jours_en_rayon
-- FROM Objet o
-- WHERE o.StatutObjet = 'EN_RAYON'
-- ORDER BY jours_en_rayon DESC;


-- -- Quelle catégorie se vend le mieux ? Laquelle rapporte le plus ?
-- SELECT c.LibelleCategorie, count(*) as nb_vendus
-- FROM LigneVente lv 
-- JOIN OBJET o on lv.idObjet = o.id 
-- JOIN Categorie c on o.idCategorie = c.id
-- GROUP BY c.LibelleCategorie
-- ORDER BY nb_vendus DESC


-- -- Combien d'heures de bénévolat ont été consacrées à la réparation cette année ?
-- SELECT b.id AS idBenevole,
--        p.Nom,
--        p.Prenom,
--        COUNT(*) AS total,
--        SUM(CASE WHEN r.ResultatReparation = 'REUSSIE' THEN 1 END) AS reussies,
--        ROUND(100.0 * SUM(CASE WHEN r.ResultatReparation = 'REUSSIE' THEN 1 END) 
--              / COUNT(*), 2) AS taux_reussite_pct
-- FROM Reparation r
-- JOIN Benevole b ON r.idBenevole = b.id
-- JOIN Personne p ON b.idPersonne = p.id
-- GROUP BY b.id, p.Nom, p.Prenom
-- ORDER BY taux_reussite_pct ASC;

-- -- Quelles personnes nous ont fait plus de trois dépôts ?
-- SELECT p.Nom,
--        p.Prenom,
--        COUNT(d.id) AS nombre_depots
-- FROM Personne p
-- JOIN Depot d ON p.id = d.idPersonne
-- GROUP BY p.id, p.Nom, p.Prenom
-- HAVING COUNT(d.id) > 3;

-- -- Quel poids total avons-nous détourné de la déchetterie (tout ce qui n'est pas recyclé) ?
-- SELECT SUM(PoidsObjet) AS poids_total
-- FROM Objet
-- WHERE StatutObjet <> 'RECYCLE';

-- -- Quel est le taux de présence réelle sur nos ateliers ?
-- SELECT
--     COUNT(*) FILTER (WHERE Presence = TRUE) * 100.0
--     / COUNT(*) AS taux_presence
-- FROM Inscription
-- WHERE Presence IS NOT NULL;

-- -- Quels bénévoles ont la compétence « électricité » et sont disponibles pour animer un atelier ?

-- SELECT p.Nom,
--        p.Prenom
-- FROM Personne p
-- JOIN Benevole b ON p.id = b.idPersonne
-- JOIN Possede po ON b.id = po.idBenevole
-- JOIN Competence c ON po.idCompetence = c.id
-- WHERE c.LibelleCompetence = 'electricite';

-- -- Quels objets sont en rayon depuis plus de six mois et devraient être sortis ?
-- SELECT DesignationObjet,
--        DateMiseRayon
-- FROM Objet
-- WHERE StatutObjet = 'EN_RAYON'
-- AND DateMiseRayon < CURRENT_DATE - INTERVAL '6 months';