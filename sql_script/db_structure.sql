
CREATE TABLE themes (
    id INT NOT NULL PRIMARY KEY ,
    name VARCHAR(40) NOT NULL, --changed (100)
    parent_id INT NULL,
    CONSTRAINT FK_themes_parent
        FOREIGN KEY (parent_id) REFERENCES themes(id)
);

CREATE TABLE part_categories (
    id INT NOT NULL PRIMARY KEY,
    name VARCHAR(200) NOT NULL
);

CREATE TABLE colors (
    id INT NOT NULL PRIMARY KEY,
    name VARCHAR(200) NOT NULL,
    rgb VARCHAR(6) NOT NULL,
    is_trans BIT NOT NULL
);

CREATE TABLE minifigs (
    fig_num VARCHAR(20) PRIMARY KEY,
    name VARCHAR(256) NOT NULL, 
    num_parts INT NOT NULL
);

CREATE TABLE sets (
    set_num VARCHAR(20) PRIMARY KEY,
    name VARCHAR(256) NOT NULL,
    year INT NOT NULL,
    theme_id INT NOT NULL,
    num_parts INT NOT NULL,
    CONSTRAINT FK_sets_theme 
        FOREIGN KEY (theme_id) REFERENCES themes(id)
);

CREATE TABLE parts (
    part_num VARCHAR(20) PRIMARY KEY,
    name VARCHAR(250) NOT NULL,
    part_cat_id INT NOT NULL,
    CONSTRAINT FK_parts_category
        FOREIGN KEY (part_cat_id) REFERENCES part_categories(id)
);

CREATE TABLE elements (
    element_id VARCHAR(10) PRIMARY KEY,
    part_num VARCHAR(20) NOT NULL,
    color_id INT NOT NULL,
    CONSTRAINT FK_elements_part FOREIGN KEY (part_num) REFERENCES parts(part_num),
    CONSTRAINT FK_elements_color FOREIGN KEY (color_id) REFERENCES colors(id)
);

CREATE TABLE inventories (
    id INT PRIMARY KEY,
    version INT NOT NULL,
    set_num VARCHAR(20) NOT NULL,
    CONSTRAINT FK_inventories_set
        FOREIGN KEY (set_num) REFERENCES sets(set_num)
);


CREATE TABLE inventory_sets (
    inventory_id INT NOT NULL,
    set_num VARCHAR(20) NOT NULL,
    quantity INT NOT NULL,
    CONSTRAINT PK_inventory_sets PRIMARY KEY (inventory_id, set_num),
    CONSTRAINT FK_inv_sets_inventory FOREIGN KEY (inventory_id) REFERENCES inventories(id),
    CONSTRAINT FK_inv_sets_set FOREIGN KEY (set_num) REFERENCES sets(set_num)
);


CREATE TABLE part_relationships (
    rel_type VARCHAR(1) NOT NULL, 
    child_part_num VARCHAR(20) NOT NULL,
    parent_part_num VARCHAR(20) NOT NULL,
    CONSTRAINT PK_part_relationships PRIMARY KEY (rel_type, child_part_num, parent_part_num),
    CONSTRAINT FK_part_rel_child FOREIGN KEY (child_part_num) REFERENCES parts(part_num),
    CONSTRAINT FK_part_rel_parent FOREIGN KEY (parent_part_num) REFERENCES parts(part_num)
);


CREATE TABLE inventory_parts (
    inventory_id INT NOT NULL,
    part_num VARCHAR(20) NOT NULL,
    color_id INT NOT NULL,
    quantity INT NOT NULL,
    is_spare BIT NOT NULL,
    CONSTRAINT PK_inventory_parts PRIMARY KEY (inventory_id, part_num, color_id),
    CONSTRAINT FK_inv_parts_inventory FOREIGN KEY (inventory_id) REFERENCES inventories(id),
    CONSTRAINT FK_inv_parts_part FOREIGN KEY (part_num) REFERENCES parts(part_num),
    CONSTRAINT FK_inv_parts_color FOREIGN KEY (color_id) REFERENCES colors(id)
);

CREATE TABLE inventory_minifigs (
    inventory_id INT NOT NULL,
    fig_num VARCHAR(20) NOT NULL,
    quantity INT NOT NULL,
    CONSTRAINT PK_inventory_minifigs PRIMARY KEY (inventory_id, fig_num),
    CONSTRAINT FK_inv_min_inventory FOREIGN KEY (inventory_id) REFERENCES inventories(id),
    CONSTRAINT FK_inv_min_fig FOREIGN KEY (fig_num) REFERENCES minifigs(fig_num)
);




