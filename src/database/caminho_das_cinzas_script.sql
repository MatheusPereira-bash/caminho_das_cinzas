CREATE DATABASE caminho_das_cinzas;
USE caminho_das_cinzas;

CREATE TABLE usuario (
	id_usuario INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(45),
    email VARCHAR(80),
    senha VARCHAR(20)
);

CREATE TABLE quiz (
	id_quiz INT PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR(100),
    descricao VARCHAR(200)
);

CREATE TABLE questao (
	id_questao INT PRIMARY KEY AUTO_INCREMENT,
    enunciado VARCHAR(150),
    imagem VARCHAR(255),
    opcao1 VARCHAR(255),
    opcao2 VARCHAR(255),
    opcao3 VARCHAR(255),
    alternativa_correta CHAR(1),
    id_quiz INT,
    FOREIGN KEY (id_quiz) REFERENCES quiz (id_quiz)
);

CREATE TABLE tentativa_quiz (
	id_tentativa INT PRIMARY KEY AUTO_INCREMENT,
    pontuacao INT,
    data_tentativa DATETIME,
    id_usuario INT,
    id_quiz INT,
    FOREIGN KEY (id_usuario) REFERENCES usuario (id_usuario),
    FOREIGN KEY (id_quiz) REFERENCES quiz (id_quiz)
);

-- INSERINDO QUIZ
INSERT INTO quiz (titulo, descricao) VALUES ('Souls Quiz', 'Tente advinhar o local do mapa ou boss pela imagem');

-- INSERINDO QUESTÕES SOULS QUIZ BLOODBORNE
INSERT INTO questao (enunciado, imagem, opcao1, opcao2, opcao3, alternativa_correta, id_quiz) VALUES
	('Advinhe o boss', 'assets/img/soulsQuiz/bloodborne/gehrman.jpg', 'Gehrman', 'Micolash', 'Orfão de Kos', 'A', 1),
	('Advinhe o boss', 'assets/img/soulsQuiz/bloodborne/kos.png', 'Ludwig', 'Orfão de Kos', 'Gehrman', 'B', 1),
	('Advinhe o boss', 'assets/img/soulsQuiz/bloodborne/lady_maria.png', 'Sister Friede', 'Rom', 'Lady Maria', 'C', 1),
	('Advinhe o boss', 'assets/img/soulsQuiz/bloodborne/ludwig.png', 'Midir', 'Padre Gascoigne', 'Ludwig', 'C', 1),
	('Advinhe o boss', 'assets/img/soulsQuiz/bloodborne/micolash.jpg', 'Micolash', 'Rom', 'Vigário Amélia', 'A', 1),
	('Advinhe o boss', 'assets/img/soulsQuiz/bloodborne/rom.png', 'Sif', 'Rom', 'Orfão de Kos', 'B', 1),
	('Advinhe o mapa', 'assets/img/soulsQuiz/bloodborne/sonho_do_cacador.png', 'Ash Lake', 'Sonho do Caçador', 'Antiga Yharnam', 'B', 1),
	('Advinhe o boss', 'assets/img/soulsQuiz/bloodborne/vigario_amelia.png', 'Vigário Amélia', 'Artorias', 'Sulyvahn', 'A', 1);
    
-- INSERINDO QUESTÕES SOULS QUIZ DARK SOULS 1
INSERT INTO questao (enunciado, imagem, opcao1, opcao2, opcao3, alternativa_correta, id_quiz) VALUES
	('Advinhe o boss', 'assets/img/soulsQuiz/darksouls1/artorias.jpg', 'Artorias', 'Sir Alonne', 'Gwyn', 'A', 1),
	('Advinhe o mapa', 'assets/img/soulsQuiz/darksouls1/ash_lake.jpg', 'Majula', 'Ash Lake', 'Firelink', 'B', 1),
	('Advinhe o mapa', 'assets/img/soulsQuiz/darksouls1/firelink.png', 'Anor Londo', 'New Londo Ruins', 'Firelink', 'C', 1),
	('Advinhe o boss', 'assets/img/soulsQuiz/darksouls1/gwyn.jpg', 'Soul of Cinder', 'Gwyn', 'Manus', 'B', 1),
	('Advinhe o boss', 'assets/img/soulsQuiz/darksouls1/iron_golem.jpg', 'Antigo Rei de Ferro', 'Sir Alonne', 'Iron Golem', 'C', 1),
	('Advinhe o boss', 'assets/img/soulsQuiz/darksouls1/ornstein_smough.jpg', 'Ornstein & Smough', 'Lorian & Lothric', 'Sif & Artorias', 'A', 1),
	('Advinhe o boss', 'assets/img/soulsQuiz/darksouls1/sif.jpg', 'Sif', 'Artorias', 'Manus', 'A', 1);
    
-- INSERINDO QUESTÕES SOULS QUIZ DARK SOULS 2
INSERT INTO questao (enunciado, imagem, opcao1, opcao2, opcao3, alternativa_correta, id_quiz) VALUES
	('Advinhe o mapa', 'assets/img/soulsQuiz/darksouls2/amana.jpg', 'Santuário de Amana', 'Majula', 'Floresta dos Gigantes Caídos', 'A', 1),
	('Advinhe o mapa', 'assets/img/soulsQuiz/darksouls2/majula.jpg', 'Torre das Chamas de Heide', 'Majula', 'Bastilha Perdida', 'B', 1),
	('Advinhe o mapa', 'assets/img/soulsQuiz/darksouls2/santuario_dragoes.jpg', 'Ravina Negra', 'Santuário dos Dragões', 'Tseldora' ,'B', 1),
	('Advinhe o boss', 'assets/img/soulsQuiz/darksouls2/antigo_rei_ferro.jpg', 'Apodrecido', 'Perseguidor', 'Antigo Rei de Ferro', 'C', 1),
	('Advinhe o boss', 'assets/img/soulsQuiz/darksouls2/cavaleiro_espelho.jpg', 'Cavaleiro do Espelho', 'Demônio da Fornalha', 'Rei de Marfim Queimado', 'A', 1),
	('Advinhe o boss', 'assets/img/soulsQuiz/darksouls2/sinh.jpg', 'Aava', 'Sir Alonne', 'Sinh', 'C', 1),
	('Advinhe o boss', 'assets/img/soulsQuiz/darksouls2/velstadt.jpg', 'Cavaleiro do Espelho', 'Velstadt', 'Nashandra', 'B', 1);
    
-- INSERINDO QUESTÕES SOULS QUIZ DARK SOULS 3
INSERT INTO questao (enunciado, imagem, opcao1, opcao2, opcao3, alternativa_correta, id_quiz) VALUES
	('Advinhe o boss', 'assets/img/soulsQuiz/darksouls3/aldrich.jpg', 'Aldrich', 'Sulyvahn', 'Vordt', 'A', 1),
	('Advinhe o boss', 'assets/img/soulsQuiz/darksouls3/friede.png', 'Yhorm', 'Aldrich', 'Sister Friede', 'C', 1),
	('Advinhe o boss', 'assets/img/soulsQuiz/darksouls3/gael.jpg', 'Campeão Gundyr', 'Gael', 'Rei Sem Nome', 'B', 1),
	('Advinhe o boss', 'assets/img/soulsQuiz/darksouls3/lorian_lothric.jpg', 'Sif & Artorias', 'Lorian & Lothric', 'Ornstein & Smough', 'B', 1),
	('Advinhe o boss', 'assets/img/soulsQuiz/darksouls3/midir.jpg', 'Midir', 'Aldrich', 'Oceiros', 'A', 1),
	('Advinhe o boss', 'assets/img/soulsQuiz/darksouls3/sulyvahn.jpg', 'Oceiros', 'Campeão Gundyr', 'Sulyvahn', 'C', 1),
	('Advinhe o boss', 'assets/img/soulsQuiz/darksouls3/yhorm.jpg', 'Yhorm', 'Gundyr', 'Vigilantes do Abismo', 'A', 1),
	('Advinhe o mapa', 'assets/img/soulsQuiz/darksouls3/irithyll.jpg',  'Catedral das profundezas', 'Irithyll', 'Castelo de Lothric', 'B', 1);
    
-- INSERINDO QUESTÕES SOULS QUIZ ELDEN RING
INSERT INTO questao (enunciado, imagem, opcao1, opcao2, opcao3, alternativa_correta, id_quiz) VALUES
	('Advinhe o boss', 'assets/img/soulsQuiz/eldenring/godfrey.jpg', 'Godfrey', 'Radahn', 'Margit', 'A', 1),
	('Advinhe o boss', 'assets/img/soulsQuiz/eldenring/godrick.jpg', 'Rykard', 'Godrick', 'Morgott', 'B', 1),
	('Advinhe o boss', 'assets/img/soulsQuiz/eldenring/malenia.jpg', 'Mohg', 'Radahn', 'Malenia', 'C', 1),
	('Advinhe o boss', 'assets/img/soulsQuiz/eldenring/maliketh.jpg', 'Radagon', 'Godfrey', 'Maliketh', 'C', 1),
	('Advinhe o boss', 'assets/img/soulsQuiz/eldenring/radagon.jpg', 'Radagon', 'Godrick', 'Gideon Ofnir', 'A', 1),
	('Advinhe o boss', 'assets/img/soulsQuiz/eldenring/rennala.jpg', 'Mogh', 'Rennala', 'Maliketh', 'B', 1),
	('Advinhe o boss', 'assets/img/soulsQuiz/eldenring/rykard.jpg', 'Radahn', 'Godfrey', 'Rykard', 'C', 1),
	('Advinhe o mapa', 'assets/img/soulsQuiz/eldenring/leyndell.jpg', 'Limgrave', 'Caelid', 'Leyndell', 'C', 1);
    
select * from questao;
select * from quiz;
select * from usuario;