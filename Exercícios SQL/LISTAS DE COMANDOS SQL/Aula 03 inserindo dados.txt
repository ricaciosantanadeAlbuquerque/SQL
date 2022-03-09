
use cadastro1;
insert into pessoa1/*inserindo dados na tabela pessoa1 especificando os campos */
(nome,nascimento,sexo,peso,altura,nacionalidade)
value
('lucas','1993-6-02','M','78.5','1.83','Brasil');

select * from pessoa1;

insert into pessoa1 /*inserindo dados na tabela pessoa1 sem especificar os campos, porém os dados devem está na ordem dos campos  */
value
(default,'luiza','2003-10-08','F','58.8','1.69','Alemanha');

 insert into pessoa1 value (default,'Ana','2000-02-01','F','56.00','1.65',default);
 insert into pessoa1 value(default,'caio','1993-08-10','M','67','1.77','EUA');
 insert into pessoa1 value(default,'biza','1973-09-18','M','68','1.72','Argentina');
 insert into pessoa1 value(default,'ricacio','1992-10-21','M','67','1.73',default);
 select * from pessoa1;
 
 insert into pessoa1 value
 (default,'andrer','1920-06-28','M','68','1.79','Polônia'),
 (default,'Abrão','1987-04-21','M','70','1.86','França'),
 (default,'ana','1982-08-13','F','53','1.66','Britânia');
 
 describe pessoa1;
 select * from pessoa1;
 
 insert into pessoa1 value
 (default,'bianca','1999-10-23','F','65','1.77','Canada'),
 (default,'pedro','1989-12-12','M','80','1.89','Mexico'),
 (default,'Fernando','2000-12-12','M','90','2','Russia');
 
select * from pessoa1;
