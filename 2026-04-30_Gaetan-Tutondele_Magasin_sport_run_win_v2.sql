SELECT SUM(prix_unitaire*quantite) AS Chiffre_affaire_total
FROM ventes
WHERE categorie_produit ='Tennis';
SELECT ROUND (AVG(prix),2) AS Moyen_prix
FROM produits
WHERE  prix BETWEEN 20 AND 50 AND  categorie ='Combat';
SELECT COUNT(id_vente) AS nombre_total_transaction
FROM ventes
WHERE ville_client ='Lubumbashi' AND date_inscription_client <'2025-01-01';
SELECT categorie_produit, ROUND(SUM(prix_unitaire*quantite),2) AS Chiffre_affaire_total_par_categorie
FROM ventes
GROUP BY categorie_produit;