CREATE TABLE atendimento (     
id_atendimento INT AUTO_INCREMENT PRIMARY KEY,     
data_consulta DATETIME NOT NULL,     
id_prontuario INT NOT NULL,     
id_profissional INT NOT NULL,     
tipo_atendimento CHAR(1) NOT NULL,     
FOREIGN KEY (id_prontuario) REFERENCES prontuario(id_prontuario),     
FOREIGN KEY (id_profissional) REFERENCES profissional(id_profissional) 
);


create table agendamento ( 
id_agendamento int auto_increment primary key, 
data_agendada datetime not null, 
id_gestante int,  
FOREIGN key (id_gestante) REFERENCES gestante(id_gestante), 
id_profissional int, 
FOREIGN key (id_profissional) REFERENCES profissional(id_profissional), 
tipo_atendimento CHAR(1) -- 'C' = consulta / 'E' = exame
);

create table gestante ( 
id_gestante int auto_increment primary key, 
nome varchar(100) not null, 
cpf char (14) unique, 
data_nascimento date, 
endereco varchar(150),  
telefone varchar(20) 
);

CREATE TABLE internacao (    
id_internacao INT AUTO_INCREMENT PRIMARY KEY,     
anotacoes TEXT,     
data_entrada DATETIME NOT NULL,     
data_saida DATETIME,     
id_gestante INT NOT NULL,     
FOREIGN KEY (id_gestante) REFERENCES gestante(id_gestante) 
);

CREATE TABLE parto (     
id_parto INT AUTO_INCREMENT PRIMARY KEY,     
data_entrada DATETIME NOT NULL,     
data_saida DATETIME,     
id_gestante INT NOT NULL,    
id_internacao INT UNIQUE NOT NULL,     
FOREIGN KEY (id_gestante) REFERENCES gestante(id_gestante),     
FOREIGN KEY (id_internacao) REFERENCES internacao(id_internacao) 
);

create table profissional ( 
id_profissional int auto_increment primary key, 
nome varchar(100) not null, 
cargo char (1) not Null -- 'M' = médico , 'E" = enfermeiro 
);

create table prontuario ( 
id_prontuario int auto_increment primary key, 
data_nascimento date not null, 
id_gestante int,  
FOREIGN key (id_gestante) REFERENCES gestante(id_gestante) 
);