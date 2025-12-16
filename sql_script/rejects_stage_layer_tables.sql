CREATE TABLE [dbo].[colors_rej](
	[id] [varchar](50) NULL,
	[name] [varchar](500) NULL,
	[rgb] [varchar](500) NULL,
	[is_trans] [varchar](500) NULL,
	[num_parts] [varchar](500) NULL,
	[num_sets] [varchar](500) NULL,
	[y1] [varchar](500) NULL,
	[y2] [varchar](500) NULL,
	[ErrorCode] [int] NULL
);

CREATE TABLE [dbo].[elements_rej](
	[element_id] [varchar](50) NULL,
	[part_num] [varchar](50) NULL,
	[color_id] [varchar](50) NULL,
	[design_id] [varchar](50) NULL,
	[ErrorCode] [int] NULL
);

CREATE TABLE [dbo].[inventories_rej](
	[id] [varchar](50) NULL,
	[version] [varchar](50) NULL,
	[set_num] [varchar](50) NULL,
	[ErrorCode] [int] NULL,
	[ErrorColumn] [int] NULL
);

CREATE TABLE [dbo].[inventories_sets_rej](
	[inventory_id] [varchar](50) NULL,
	[set_num] [varchar](50) NULL,
	[quantity] [varchar](50) NULL,
	[ErrorCode] [int] NULL
);

CREATE TABLE [dbo].[inventory_minifigs_rej](
	[inventory_id] [varchar](50) NULL,
	[fig_num] [varchar](50) NULL,
	[quantity] [varchar](50) NULL,
	[ErrorCode] [int] NULL
);

CREATE TABLE [dbo].[inventory_parts_rej](
	[inventory_id] [varchar](50) NULL,
	[part_num] [varchar](50) NULL,
	[color_id] [varchar](50) NULL,
	[quantity] [varchar](50) NULL,
	[is_spare] [varchar](50) NULL,
	[img_url] [varchar](500) NULL,
	[ErrorCode] [int] NULL,
	[ErrorColumn] [int] NULL
);

CREATE TABLE [dbo].[minfigs_rej](
	[fig_num] [varchar](50) NULL,
	[name] [varchar](500) NULL,
	[num_parts] [varchar](500) NULL,
	[img_url] [varchar](1000) NULL,
	[ErrorCode] [int] NULL,
	[ErrorColumn] [int] NULL
);

CREATE TABLE [dbo].[part_categories_rej](
	[id] [varchar](50) NULL,
	[name] [varchar](200) NULL,
	[ErrorCode] [int] NULL
);

CREATE TABLE [dbo].[part_relationships_rej](
	[rel_type] [varchar](50) NULL,
	[child_part_num] [varchar](50) NULL,
	[parent_part_num] [varchar](50) NULL,
	[ErrorCode] [int] NULL,
	[ErrorColumn] [int] NULL
);


CREATE TABLE [dbo].[parts_rej](
	[part_num] [varchar](50) NULL,
	[name] [varchar](250) NULL,
	[part_cat_id] [varchar](50) NULL,
	[part_material] [varchar](500) NULL,
	[ErrorCode] [int] NULL
);

CREATE TABLE [dbo].[sets_rej](
	[set_num] [varchar](500) NULL,
	[name] [varchar](500) NULL,
	[year] [varchar](500) NULL,
	[theme_id] [varchar](500) NULL,
	[num_parts] [varchar](500) NULL,
	[img_url] [varchar](500) NULL,
	[ErrorCode] [int] NULL
);

CREATE TABLE [dbo].[themes_rej](
	[id] [varchar](50) NULL,
	[name] [varchar](100) NULL,
	[parent_id] [varchar](50) NULL,
	[ErrorCode] [int] NULL,
	[ErrorColumn] [int] NULL
);