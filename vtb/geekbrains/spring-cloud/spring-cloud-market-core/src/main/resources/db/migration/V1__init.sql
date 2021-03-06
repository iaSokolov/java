create table roles
(
    id   varchar(255) not null,
    name varchar(255),
    primary key (id)
);

create table users
(
    username varchar(255) not null,
    enabled  boolean,
    password varchar(255),
    primary key (username)
);

create table authorities
(
    authority varchar(255) not null,
    username  varchar(255) not null,
    primary key (authority, username),
    constraint authority_fkey foreign key (authority) references roles (id),
    constraint username_fkey foreign key (username) references users (username)
);

INSERT INTO roles
VALUES ('ROLE_ADMIN', 'Администратор');
INSERT INTO roles
VALUES ('ROLE_USER', 'Пользователь');

INSERT INTO users(username, password, enabled)
VALUES ('a', 'a', true);
INSERT INTO users(username, password, enabled)
VALUES ('u', 'u', true);

INSERT INTO authorities(authority, username)
VALUES ('ROLE_ADMIN', 'a');
INSERT INTO authorities(authority, username)
VALUES ('ROLE_USER', 'a');
INSERT INTO authorities(authority, username)
VALUES ('ROLE_USER', 'u');
