-- Ajout les tableau avec les primary kays and les foreign kays ::=>

create TABLE jeu(
    id int AUTO_INCREMENT PRIMARY KEY, 
	titre varchar(50) not null,
    studio_dev varchar(50) not null,
    date_sortie date not null,
    genre varchar(50) not null,
    multijoueur ENUM ('oui','none')
);
create TABLE member(    
    id int AUTO_INCREMENT primary key,
    name varchar(55) not null,
    email varchar(100) not null,
    date_inscription date not null
);
create TABLE emprunter(    
    id int AUTO_INCREMENT primary key,
	date_start date not null,
    date_reteur_preuve date not null,
    date_reteur_reel date not null,
    member_id int not null,
    jeu_id int not null,
    FOREIGN KEY member_id REFERENCES member(id),
    FOREIGN KEY jeu_id REFERENCES jeu(id)
);
create TABLE abonnement(
    id int AUTO_INCREMENT PRIMARY KEY,
    date_start date not null,
    date_fin date not null,
    member_id int not null,
    FOREIGN key member_id REFERENCES member(id)
);

create TABLE tournoi(
    id int AUTO_INCREMENT PRIMARY KEY,
	tournoi_name varchar(80) not null,
    tournoi_start date not null,
    tournoi_end date not null
);

create TABLE participer(
    id int AUTO_INCREMENT PRIMARY KEY,
	scor int,
    rank_final int,
	FOREIGN key member_id REFERENCES member(id),
    FOREIGN key tournoi_id REFERENCES tournoi(id)
);

--------------------------------------------------------------
-- inseration des donnee :
INSERT INTO jeu (titre, studio_dev, date_sortie, genre, multijoueur) VALUES
('The Last Quest', 'Epic Studios', '2020-06-15', 'RPG', 'none'),
('Battle Ground', 'Warrior Games', '2019-11-10', 'FPS', 'oui'),
('Racing Thunder', 'SpeedSoft', '2021-03-21', 'Course', 'oui'),
('Mystic Forest', 'DreamWorks', '2018-07-08', 'Aventure', 'none'),
('Space Odyssey', 'Galactic Inc.', '2020-09-19', 'Science-fiction', 'oui'),
('Puzzle King', 'LogicSoft', '2017-05-12', 'Puzzle', 'none'),
('City Builder', 'UrbanSoft', '2021-12-01', 'Simulation', 'none'),
('Fantasy Tactics', 'Heroic Games', '2020-04-03', 'Stratégie', 'none'),
('Zombie Survival', 'HorrorWorks', '2019-10-31', 'Horreur', 'oui'),
('Virtual Soccer', 'SportPro', '2021-06-18', 'Sport', 'oui'),
('Ocean Explorer', 'MarineSoft', '2018-02-22', 'Simulation', 'none'),
('Super Fighters', 'ArcadePro', '2019-09-13', 'Action', 'oui'),
('Historic Wars', 'Timeline Games', '2017-03-05', 'Stratégie', 'none'),
('Galaxy Defenders', 'SpaceWorks', '2022-01-15', 'Science-fiction', 'oui'),
('Knight’s Honor', 'MedievalSoft', '2020-08-20', 'Aventure', 'none'),
('Dance Fever', 'RhythmSoft', '2019-05-15', 'Musique', 'none'),
('Combat Arena', 'FightCorp', '2022-03-28', 'Action', 'oui'),
('World Tycoon', 'BizWorks', '2018-10-14', 'Simulation', 'none'),
('Hacker’s Revenge', 'CodeSoft', '2020-11-07', 'Thriller', 'none'),
('Legend of Heroes', 'Epic Studios', '2021-07-30', 'RPG', 'none');

--------------------
INSERT INTO member (name, email, date_inscription) VALUES
('Alice Dupont', 'alice.dupont@example.com', '2023-01-15'),
('Bob Martin', 'bob.martin@example.com', '2023-02-20'),
('Charlie Durand', 'charlie.durand@example.com', '2023-03-18'),
('Diana Rousseau', 'diana.rousseau@example.com', '2023-04-25'),
('Eve Lambert', 'eve.lambert@example.com', '2023-05-10'),
('Franck Moreau', 'franck.moreau@example.com', '2023-06-05'),
('Grace Dubois', 'grace.dubois@example.com', '2023-07-12'),
('Hugo Bernard', 'hugo.bernard@example.com', '2023-08-03'),
('Isabelle Petit', 'isabelle.petit@example.com', '2023-09-07'),
('Jack Leroy', 'jack.leroy@example.com', '2023-10-15'),
('Kathy Rolland', 'kathy.rolland@example.com', '2023-11-01'),
('Leo Perrin', 'leo.perrin@example.com', '2023-12-05'),
('Marie Blanc', 'marie.blanc@example.com', '2023-12-15'),
('Nathan Noel', 'nathan.noel@example.com', '2024-01-10'),
('Olivia Vidal', 'olivia.vidal@example.com', '2024-01-22'),
('Paul Girard', 'paul.girard@example.com', '2024-02-14'),
('Quentin Faure', 'quentin.faure@example.com', '2024-03-08'),
('Romain Lefevre', 'romain.lefevre@example.com', '2024-03-20'),
('Sophie Clement', 'sophie.clement@example.com', '2024-04-01'),
('Thomas Caron', 'thomas.caron@example.com', '2024-04-15');
-------------------------
INSERT INTO emprunter (date_start, date_reteur_preuve, date_reteur_reel, member_id, jeu_id) VALUES
('2024-01-10', '2024-01-17', '2024-01-16', 1, 5),
('2024-02-01', '2024-02-08', '2024-02-08', 2, 3),
('2024-02-15', '2024-02-22', '2024-02-21', 3, 10),
('2024-03-01', '2024-03-08', '2024-03-07', 4, 7),
('2024-03-10', '2024-03-17', '2024-03-17', 5, 12),
('2024-03-20', '2024-03-27', '2024-03-26', 6, 15),
('2024-04-01', '2024-04-08', '2024-04-08', 7, 19),
('2024-04-10', '2024-04-17', '2024-04-17', 8, 8),
('2024-04-20', '2024-04-27', '2024-04-27', 9, 6),
('2024-05-01', '2024-05-08', '2024-05-07', 10, 1),
('2024-05-10', '2024-05-17', '2024-05-16', 11, 11),
('2024-05-20', '2024-05-27', '2024-05-27', 12, 2),
('2024-06-01', '2024-06-08', '2024-06-07', 13, 4),
('2024-06-10', '2024-06-17', '2024-06-17', 14, 14),
('2024-06-20', '2024-06-27', '2024-06-26', 15, 13),
('2024-07-01', '2024-07-08', '2024-07-08', 16, 9),
('2024-07-10', '2024-07-17', '2024-07-17', 17, 18),
('2024-07-20', '2024-07-27', '2024-07-27', 18, 17),
('2024-08-01', '2024-08-08', '2024-08-08', 19, 20),
('2024-08-10', '2024-08-17', '2024-08-17', 20, 16);

---------------------
INSERT INTO abonnement (date_start, date_fin, member_id) VALUES
('2023-01-15', '2024-01-15', 1),
('2023-02-20', '2024-02-20', 2),
('2023-03-18', '2024-03-18', 3),
('2023-04-25', '2024-04-25', 4),
('2023-05-10', '2024-05-10', 5),
('2023-06-05', '2024-06-05', 6),
('2023-07-12', '2024-07-12', 7),
('2023-08-03', '2024-08-03', 8),
('2023-09-07', '2024-09-07', 9),
('2023-10-15', '2024-10-15', 10),
('2023-11-01', '2024-11-01', 11),
('2023-12-05', '2024-12-05', 12),
('2023-12-15', '2024-12-15', 13),
('2024-01-10', '2025-01-10', 14),
('2024-01-22', '2025-01-22', 15),
('2024-02-14', '2025-02-14', 16),
('2024-03-08', '2025-03-08', 17),
('2024-03-20', '2025-03-20', 18),
('2024-04-01', '2025-04-01', 19),
('2024-04-15', '2025-04-15', 20);


-------------------------

INSERT INTO tournoi (tournoi_name, tournoi_start, tournoi_end)
VALUES
('Winter Championship', '2024-01-15', '2024-01-20'),
('Spring Open', '2024-03-10', '2024-03-15'),
('Summer Classic', '2024-06-01', '2024-06-07'),
('Autumn Invitational', '2024-09-05', '2024-09-10'),
('City Cup', '2024-11-01', '2024-11-03'),
('Pro League Finals', '2025-02-10', '2025-02-15'),
('Junior Tournament', '2024-04-15', '2024-04-20'),
('All-Star Challenge', '2024-07-10', '2024-07-12'),
('Regional Qualifiers', '2024-08-01', '2024-08-05'),
('National Championship', '2024-10-15', '2024-10-20'),
('Local Tournament', '2024-02-10', '2024-02-12'),
('Weekend Knockout', '2024-03-20', '2024-03-22'),
('Beginners Cup', '2024-05-05', '2024-05-07'),
('Amateur Finals', '2024-07-15', '2024-07-20'),
('State League', '2024-08-15', '2024-08-17'),
('Elite Cup', '2024-09-25', '2024-09-30'),
('Champions Gala', '2024-11-15', '2024-11-18'),
('Holiday Bash', '2024-12-20', '2024-12-25'),
('Open Invitational', '2025-01-05', '2025-01-10'),
('Finals Tournament', '2025-03-01', '2025-03-05');

-------------------------
INSERT INTO participer (scor, rank_final, member_id, tournoi_id)
VALUES
(85, 1, 1, 1),
(72, 2, 2, 1),
(90, 1, 3, 2),
(67, 3, 4, 2),
(78, 2, 5, 3),
(81, 1, 6, 3),
(88, 1, 7, 4),
(65, 4, 8, 4),
(75, 3, 9, 5),
(83, 2, 10, 5),
(89, 1, 11, 6),
(68, 3, 12, 6),
(70, 2, 13, 7),
(60, 4, 14, 7),
(77, 3, 15, 8),
(82, 2, 16, 8),
(91, 1, 17, 9),
(63, 5, 18, 9),
(80, 2, 19, 10),
(86, 1, 20, 10);

