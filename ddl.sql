
create database bd_axel_ruiz_esthercita;
use bd_axel_ruiz_esthercita;

create table eco_city (
    id_city int auto_increment primary key,
    city_name varchar(100) not null unique
);

create table eco_category (
    id_category int auto_increment primary key,
    category_name varchar(100) not null unique
);

create table eco_distribution_center (
    id_distribution_center int auto_increment primary key,
    distribution_center_name varchar(150) not null unique
);

create table eco_customer (
    id_customer int auto_increment primary key,
    customer_name varchar(150) not null,
    id_city int not null,

    constraint fk_customer_city
        foreign key (id_city)
        references eco_city(id_city)
);

create table eco_product (
    id_product int auto_increment primary key,
    product_name varchar(150) not null,
    id_category int not null,
    unit_price decimal(10,2) not null,
    stock int not null,

    constraint fk_product_category
        foreign key (id_category)
        references eco_category(id_category)
);

create table eco_order (
    id_order varchar(20) primary key,
    id_customer int not null,
    id_distribution_center int not null,
    order_date date not null,

    constraint fk_order_customer
        foreign key (id_customer)
        references eco_customer(id_customer),

    constraint fk_order_distribution_center
        foreign key (id_distribution_center)
        references eco_distribution_center(id_distribution_center)
);

create table eco_order_detail (
    id_order_detail int auto_increment primary key,
    id_order varchar(20) not null,
    id_product int not null,
    quantity int not null,
    historical_price decimal(10,2) not null,

    constraint fk_detail_order
        foreign key (id_order)
        references eco_order(id_order)
        on update cascade
        on delete restrict,

    constraint fk_detail_product
        foreign key (id_product)
        references eco_product(id_product)
        on update cascade
        on delete restrict
);
select count(*) from eco_order_detail;
select * from eco_distribution_center;
TRUNCATE TABLE eco_product;

