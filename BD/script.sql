create database Projeto_individual;
use Projeto_individual;
drop database Projeto_individual;


create table Usuario(
idUsuario int primary key auto_increment,
Nome varchar(45),
Sobrenome varchar(45),
dtNasc date,
Email varchar(45),
senha varchar(45),
Sexo char(1),
experiencia char(1),
NomedaArte varchar(45),
tempo varchar(45),
constraint chkSexo check 
	(Sexo IN ('m', 'f')),
    constraint chkExp check 
	(experiencia IN ('s', 'n'))
    );
    
    create table Dojo(
    idDojo int primary key auto_increment,
    fkUsuario int,
    Nome varchar(45),
    Localização varchar(45),
    Mestre varchar(45),
    constraint fkUsuario foreign key (fkUsuario)
	references Usuario(idUsuario)
    );
    
    
    select*from dojo;
    
    select*from Usuario;
    
    -- dashbords
    
    select experiencia, count(experiencia) as Usuarios from Usuario group by experiencia;
    
     select count(idUsuario) from Usuario;
    