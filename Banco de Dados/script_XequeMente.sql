CREATE DATABASE XequeMente;
USE XequeMente;

CREATE TABLE usuario(
idUsuario INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(45),
email VARCHAR(100),
senha VARCHAR(45),
experiencia INT
);

CREATE TABLE quiz(
idQuiz INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(45),
descricao VARCHAR(100),
pergunta VARCHAR(100)
);

CREATE TABLE tentativa(
idTentativa INT,
fkUsuario INT,
fkQuiz INT,
PRIMARY KEY (idTentativa, fkUsuario, fkQuiz),
CONSTRAINT fkUsuarioTentativa
	FOREIGN KEY (fkUsuario)
		REFERENCES usuario(idUsuario),
CONSTRAINT fkQuizTentativa
	FOREIGN KEY (fkQuiz)
		REFERENCES quiz(idQuiz)
);


