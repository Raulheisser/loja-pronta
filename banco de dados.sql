create database loja_virtual;
use loja_virtual;
 
create table products(
	id_products int primary key auto_increment not null,
    description varchar(255) not null,
    price double
);
 
create table users(
	id_usuarios int primary key auto_increment not null,
    name varchar(255) not null,
    email varchar(255) not null,
    password varchar(255) not null,
    cpf_number bigint,
    status enum("Ativo", "Inativo") default("Ativo"),
    created_at timestamp default current_timestamp
    
);
alter table users add column perfil enum('admin', 'usuario') default('usario');
insert into users(name,email,password,cpf_number,perfil)
values("Kanneman","kan@gmail.com","123",212421,"admin");


 
 
SELECT * FROM products;
SELECT * FROM users;