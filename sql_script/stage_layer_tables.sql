CREATE DATABASE LegoStageDB;
GO

USE LegoStageDB;
GO



CREATE TABLE themes_stg (
    id INT NOT NULL  ,
    name VARCHAR(100) NOT NULL,
    parent_id INT NULL
);

--Length changed 
alter table themes_stg
alter column name VARCHAR(100) NOT NULL
--

CREATE TABLE part_categories_stg (
    id INT NOT NULL ,
    name VARCHAR(200) NOT NULL
);

CREATE TABLE colors_stg (
    id INT NOT NULL ,
    name VARCHAR(200) NOT NULL,
    rgb VARCHAR(6) NOT NULL,
    is_trans BIT NOT NULL
);

CREATE TABLE minifigs_stg (
    fig_num VARCHAR(20) NOT NULL,
    name VARCHAR(256) NOT NULL,
    num_parts INT NOT NULL
);

CREATE TABLE sets_stg (
    set_num VARCHAR(20) NOT NULL,
    name VARCHAR(256) NOT NULL,
    year INT NOT NULL,
    theme_id INT NOT NULL,
    num_parts INT NOT NULL
);

CREATE TABLE parts_stg (
    part_num VARCHAR(20) NOT NULL,
    name VARCHAR(250) NOT NULL,
    part_cat_id INT NOT NULL
);

CREATE TABLE elements_stg (
    element_id VARCHAR(10) NOT NULL,
    part_num VARCHAR(20) NOT NULL,
    color_id INT NOT NULL
);

CREATE TABLE inventories_stg (
    id INT NOT NULL,
    version INT NOT NULL,
    set_num VARCHAR(20) NOT NULL
);


CREATE TABLE inventory_sets_stg (
    inventory_id INT NOT NULL,
    set_num VARCHAR(20) NOT NULL,
    quantity INT NOT NULL
);


CREATE TABLE part_relationships_stg (
    rel_type VARCHAR(1) NOT NULL, 
    child_part_num VARCHAR(20) NOT NULL,
    parent_part_num VARCHAR(20) NOT NULL
);


CREATE TABLE inventory_parts_stg (
    inventory_id INT NOT NULL,
    part_num VARCHAR(20) NOT NULL,
    color_id INT NOT NULL,
    quantity INT NOT NULL,
    is_spare BIT NOT NULL
);

CREATE TABLE inventory_minifigs_stg (
    inventory_id INT NOT NULL,
    fig_num VARCHAR(20) NOT NULL,
    quantity INT NOT NULL
);




