-- sets.theme_id --

CREATE INDEX index_sets_theme_id
    ON sets(theme_id);

-- parts.part_cat_id --

CREATE INDEX index_parts_part_cat_id
    ON parts(part_cat_id);

-- elements.part_num, elements.color_id --

CREATE INDEX index_elements_part_num
    ON elements(part_num);

CREATE INDEX index_elements_color_id
    ON elements(color_id);

-- inventories.set_num -- 

CREATE INDEX index_inventories_set_num
    ON inventories(set_num);

-- inventory_sets.inventory_id, .set_num --

CREATE INDEX index_inventory_sets_inventory
    ON inventory_sets(inventory_id);

CREATE INDEX index_inventory_sets_set_num
    ON inventory_sets(set_num);

-- inventory_parts.inventory_id, .part_num, .color_id --

CREATE INDEX index_inventory_parts_inventory
    ON inventory_parts(inventory_id);

CREATE INDEX index_inventory_parts_part_num
    ON inventory_parts(part_num);

CREATE INDEX index_inventory_parts_color_id
    ON inventory_parts(color_id);

-- inventory_minifigs.inventory_id, .fig_num --

CREATE INDEX index_inventory_minifigs_inventory
    ON inventory_minifigs(inventory_id);

CREATE INDEX index_inventory_minifigs_fig_num
    ON inventory_minifigs(fig_num);

-- part_relationships.child_part_num, .parent_part_num --

CREATE INDEX index_part_relat_child
    ON part_relationships(child_part_num);

CREATE INDEX index_part_relat_parent
    ON part_relationships(parent_part_num);