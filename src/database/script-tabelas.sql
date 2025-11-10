CREATE DATABASE caminho_das_cinzas;
USE caminho_das_cinzas;


CREATE TABLE usuario (
	id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(45),
    email VARCHAR(80),
    senha VARCHAR(20)
);

CREATE TABLE quiz (
	id INT PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR(100),
    descricao VARCHAR(200)
);

CREATE TABLE questao (
	id INT PRIMARY KEY AUTO_INCREMENT,
    enunciado VARCHAR(150),
    imagem VARCHAR(255),
    alternativa_correta CHAR(1),
    id_quiz INT,
    FOREIGN KEY (id_quiz) REFERENCES quiz (id)
);

CREATE TABLE resposta_usuario (
	id INT PRIMARY KEY AUTO_INCREMENT,
    alternativa_marcada CHAR(1),
    correta TINYINT,
    id_usuario INT,
    id_questao INT,
    FOREIGN KEY (id_usuario) REFERENCES usuario (id),
    FOREIGN KEY (id_questao) REFERENCES questao (id)
);

-- INSERINDO QUIZ
INSERT INTO quiz (titulo, descricao) VALUES ('Souls Quiz', 'Tente advinhar o local do mapa ou boss pela imagem');

-- INSERINDO QUESTÕES SOULS QUIZ BLOODBORNE
INSERT INTO questao (enunciado, imagem, alternativa_correta, id_quiz) VALUES
	('Advinhe o boss', 'assets/img/soulsQuiz/bloodborne/gehrman.jpg', 'A', 1),
	('Advinhe o boss', 'assets/img/soulsQuiz/bloodborne/kos.png', 'B', 1),
	('Advinhe o boss', 'assets/img/soulsQuiz/bloodborne/lady_maria.png', 'C', 1),
	('Advinhe o boss', 'assets/img/soulsQuiz/bloodborne/ludwig.png', 'C', 1),
	('Advinhe o boss', 'assets/img/soulsQuiz/bloodborne/micolash.jpg', 'A', 1),
	('Advinhe o boss', 'assets/img/soulsQuiz/bloodborne/rom.png', 'B', 1),
	('Advinhe o mapa', 'assets/img/soulsQuiz/bloodborne/sonho_do_cacador.png', 'B', 1),
	('Advinhe o boss', 'assets/img/soulsQuiz/bloodborne/vigario_amelia.png', 'A', 1);
    
-- INSERINDO QUESTÕES SOULS QUIZ DARK SOULS 1
INSERT INTO questao (enunciado, imagem, alternativa_correta, id_quiz) VALUES
	('Advinhe o boss', 'assets/img/soulsQuiz/darksouls1/artorias.jpg', 'A', 1),
	('Advinhe o mapa', 'assets/img/soulsQuiz/darksouls1/ash_lake.jpg', 'B', 1),
	('Advinhe o mapa', 'assets/img/soulsQuiz/darksouls1/firelink.png', 'C', 1),
	('Advinhe o boss', 'assets/img/soulsQuiz/darksouls1/gwyn.jpg', 'B', 1),
	('Advinhe o boss', 'assets/img/soulsQuiz/darksouls1/iron_golem.jpg', 'C', 1),
	('Advinhe o boss', 'assets/img/soulsQuiz/darksouls1/ornstein_smough.jpg', 'A', 1),
	('Advinhe o boss', 'assets/img/soulsQuiz/darksouls1/sif.jpg', 'A', 1);
    
-- INSERINDO QUESTÕES SOULS QUIZ DARK SOULS 2
INSERT INTO questao (enunciado, imagem, alternativa_correta, id_quiz) VALUES
	('Advinhe o mapa', 'assets/img/soulsQuiz/darksouls2/amana.jpg', 'A', 1),
	('Advinhe o mapa', 'assets/img/soulsQuiz/darksouls2/majula.jpg', 'B', 1),
	('Advinhe o mapa', 'assets/img/soulsQuiz/darksouls2/santuario_dragoes.jpg', 'B', 1),
	('Advinhe o boss', 'assets/img/soulsQuiz/darksouls2/antigo_rei_ferro.jpg', 'C', 1),
	('Advinhe o boss', 'assets/img/soulsQuiz/darksouls2/cavaleiro_espelho.jpg', 'A', 1),
	('Advinhe o boss', 'assets/img/soulsQuiz/darksouls2/sinh.jpg', 'C', 1),
	('Advinhe o boss', 'assets/img/soulsQuiz/darksouls2/velstadt.jpg', 'B', 1);
    
-- INSERINDO QUESTÕES SOULS QUIZ DARK SOULS 3
INSERT INTO questao (enunciado, imagem, alternativa_correta, id_quiz) VALUES
	('Advinhe o boss', 'assets/img/soulsQuiz/darksouls3/aldrich.jpg', 'A', 1),
	('Advinhe o boss', 'assets/img/soulsQuiz/darksouls3/friede.png', 'C', 1),
	('Advinhe o boss', 'assets/img/soulsQuiz/darksouls3/gael.jpg', 'B', 1),
	('Advinhe o boss', 'assets/img/soulsQuiz/darksouls3/lorian_lothric.jpg', 'B', 1),
	('Advinhe o boss', 'assets/img/soulsQuiz/darksouls3/midir.jpg', 'A', 1),
	('Advinhe o boss', 'assets/img/soulsQuiz/darksouls3/sulyvahn.jpg', 'C', 1),
	('Advinhe o boss', 'assets/img/soulsQuiz/darksouls3/yhorm.jpg', 'A', 1),
	('Advinhe o mapa', 'assets/img/soulsQuiz/darksouls3/irithyll.jpg', 'B', 1);
    
-- INSERINDO QUESTÕES SOULS QUIZ ELDEN RING
INSERT INTO questao (enunciado, imagem, alternativa_correta, id_quiz) VALUES
	('Advinhe o boss', 'assets/img/soulsQuiz/eldenring/godfrey.jpg', 'A', 1),
	('Advinhe o boss', 'assets/img/soulsQuiz/eldenring/godrick.jpg', 'B', 1),
	('Advinhe o boss', 'assets/img/soulsQuiz/eldenring/malenia.jpg', 'C', 1),
	('Advinhe o boss', 'assets/img/soulsQuiz/eldenring/maliketh.jpg', 'C', 1),
	('Advinhe o boss', 'assets/img/soulsQuiz/eldenring/radagon.jpg', 'A', 1),
	('Advinhe o boss', 'assets/img/soulsQuiz/eldenring/radahn.jpg', 'A', 1),
	('Advinhe o boss', 'assets/img/soulsQuiz/eldenring/rennala.jpg', 'B', 1),
	('Advinhe o boss', 'assets/img/soulsQuiz/eldenring/rykard.jpg', 'C', 1),
	('Advinhe o mapa', 'assets/img/soulsQuiz/eldenring/leyndell.jpg', 'C', 1);
    
select * from questao;
select * from quiz;
select * from usuario;