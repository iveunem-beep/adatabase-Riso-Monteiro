## Décision 1 — Rôles des personnes
J’ai choisi qu’une même personne puisse être donatrice, acheteuse, participante à un atelier et bénévole, car ces rôles ne sont pas incompatibles. Cela évite de créer plusieurs fois la même personne dans la base. Les informations communes sont donc regroupées dans Personne, et les informations spécifiques au bénévolat dans Benevole.

## Décision 2 — Sortie des objets invendus
L’entretien indique qu’un objet invendu peut être sorti après six mois, sans préciser son statut. Nous avons choisi de ne pas ajouter de nouveau statut, car les règles de gestion définissent déjà la liste des statuts possibles. Un objet invendu destiné à être éliminé sera donc considéré comme recyclé lorsqu’il rejoint la filière de recyclage.

## Décision 3 — Adresse pour les collectes à domicile
L’entretien mentionne des collectes à domicile mais ne précise pas que l’adresse doit être conservée dans la base. Nous avons choisi de ne pas stocker l’adresse, car elle ne fait pas partie des données explicitement demandées et aucune requête métier ne l’utilise.

## Décision 4 — Présence aux ateliers
Avant qu’un atelier ait eu lieu, nous ne pouvons pas savoir si une personne inscrite sera présente ou absente. Nous avons donc choisi que Presence puisse être NULL avant l’atelier, puis TRUE si la personne est venue ou FALSE si elle était absente.