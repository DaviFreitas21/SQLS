USE bdEscola

INSERT INTO tbCurso(nomeCurso, cargaHorariaCurso, valorCurso)
VALUES ('Inglês', 2000, 356.00),
('Alemão', 3000, 478.00)

INSERT INTO tbAluno(nomeAluno, dataNascimentoAluno, rgAluno, naturalidadeAluno)
VALUES ('Paulo Santos', '03/10/2000','822921220', 'SP'),
('Maria da Gloria', '10/03/1999','452331230','SP'),
('Perla Nogueira', '04/04/1998','235332119','SP'),
('Gilson Barros Silva', '09/09/1995','34221111x','PE'),
('Mariana Barbosa Santos', '10/10/2001','542221229','RJ')

INSERT INTO tbTurma(nomeTurma, idCurso, horarioTurma)
VALUES ('1|A', 1, '01/01/1900 12:00:00'),
('1|B',1,'01/01/1900 18:00:00'),
('1AA', 2, '01/01/1900 19:00:00')

INSERT INTO tbMatricula(dataMatricula, idAluno, idTurma)
VALUES ('10/03/2015', 1, 1),
('05/04/2014', 2, 1),
('05/03/2012', 3, 2),
('03/03/2016', 1, 3),
('2015/05/07', 4, 2),
('2015/07/05', 4, 3), 
('2015/06/06', 5, 1),
('2015/05/05', 5, 3)