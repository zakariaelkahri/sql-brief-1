-- 1
SELECT name AS Pseudo, email AS Email, date_inscription AS "Date d'inscription"
FROM member;

--2
SELECT titre AS "Titre", genre AS "Genre", studio_dev AS "Studio de développement"
FROM jeu;
--3
select * from tournoi where tournoi_name = "Spring Open" ;
--4
SELECT 
    emprunter.id AS emprunt_id,
    member.name AS pseudo_membre,
    jeu.titre AS titre_jeu,
    emprunter.date_start AS date_debut,
    emprunter.date_reteur_preuve AS date_prevue
FROM 
    emprunter
JOIN 
    member ON emprunter.member_id = member.id
JOIN 
    jeu ON emprunter.jeu_id = jeu.id
WHERE 
    emprunter.date_reteur_reel IS NULL;

--5
SELECT 
    member.name AS pseudo_membre,
    tournoi.tournoi_name AS nom_tournoi,
    participer.rank_final AS rang_final
FROM 
    participer
JOIN 
    member ON participer.member_id = member.id
JOIN 
    tournoi ON participer.tournoi_id = tournoi.id;
--6
SELECT 
    member.name AS pseudo_membre,
    abonnement.date_start AS date_debut,
    abonnement.date_fin AS date_fin
FROM 
    abonnement
JOIN 
    member ON abonnement.member_id = member.id
WHERE 
    DATEDIFF(abonnement.date_fin, abonnement.date_start) = 365;

--6
SELECT 
    jeu.titre AS titre_jeu,
    emprunter.date_start AS date_debut,
    emprunter.date_reteur_preuve AS date_prevue,
    emprunter.date_reteur_reel AS date_reelle
FROM 
    emprunter
JOIN 
    member ON emprunter.member_id = member.id
JOIN 
    jeu ON emprunter.jeu_id = jeu.id
WHERE 
    member.name = 'Pseudo_du_membre';
    --7









    --8



    --9
    SELECT 
    genre,
    COUNT(*) 
FROM 
    jeu
group BY
genre ;
--10
SELECT tournoi_name, COUNT(*) AS participants
FROM participer
JOIN tournoi ON participer.tournoi_id = tournoi.id
GROUP BY tournoi.id
--11

SELECT 
    member.name,
    COUNT(emprunter.id)
FROM 
    member 
join 
	emprunter ON member.id = emprunter.member_id
GROUP BY
	member.id ; 