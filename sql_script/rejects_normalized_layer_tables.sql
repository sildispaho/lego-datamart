Create Schema rejects;
GO

CREATE TABLE [rejects].[theme](
	[id] [int] NULL,
	[name] [varchar](100) NULL,
	[parent_id] [int] NULL,
	[ErrorCode] [int] NULL,
	[ErrorColumn] [int] NULL,
	[load_date] [datetime] NULL
);

CREATE TABLE [rejects].[sets](
	[set_num] [varchar](20) NULL,
	[name] [varchar](256) NULL,
	[year] [int] NULL,
	[theme_id] [int] NULL,
	[num_parts] [int] NULL,
	[ErrorCode] [int] NULL,
	[ErrorColumn] [int] NULL,
	[load_date] [datetime] NULL
);

CREATE TABLE [rejects].[parts](
	[part_num] [varchar](20) NULL,
	[name] [varchar](250) NULL,
	[part_cat_id] [int] NULL,
	[ErrorCode] [int] NULL,
	[ErrorColumn] [int] NULL,
	[load_date] [datetime] NULL
);

CREATE TABLE [rejects].[part_relationships](
	[rel_type] [varchar](1) NULL,
	[child_part_num] [varchar](20) NULL,
	[parent_part_num] [varchar](20) NULL,
	[ErrorCode] [int] NULL,
	[ErrorColumn] [int] NULL,
	[load_date] [datetime] NULL
);

CREATE TABLE [rejects].[part_categories](
	[id] [int] NULL,
	[name] [varchar](200) NULL,
	[ErrorCode] [int] NULL,
	[ErrorColumn] [int] NULL,
	[load_date] [datetime] NULL
);

CREATE TABLE [rejects].[minifigs](
	[fig_num] [varchar](20) NULL,
	[name] [varchar](256) NULL,
	[num_parts] [int] NULL,
	[ErrorCode] [int] NULL,
	[ErrorColumn] [int] NULL,
	[load_date] [datetime] NULL
);

CREATE TABLE [rejects].[inventory_sets](
	[inventory_id] [int] NULL,
	[set_num] [varchar](20) NULL,
	[quantity] [int] NULL,
	[ErrorCode] [int] NULL,
	[ErrorColumn] [int] NULL,
	[load_date] [datetime] NULL
);

CREATE TABLE [rejects].[inventory_parts](
	[inventory_id] [int] NULL,
	[part_num] [varchar](20) NULL,
	[color_id] [int] NULL,
	[quantity] [int] NULL,
	[is_spare] [bit] NULL,
	[ErrorCode] [int] NULL,
	[ErrorColumn] [int] NULL,
	[load_date] [datetime] NULL
);

CREATE TABLE [rejects].[inventory_minifigs](
	[inventory_id] [int] NULL,
	[fig_num] [varchar](20) NULL,
	[quantity] [int] NULL,
	[ErrorCode] [int] NULL,
	[ErrorColumn] [int] NULL,
	[load_date] [datetime] NULL
);

CREATE TABLE [rejects].[inventories_rejects](
	[id] [int] NULL,
	[version] [int] NULL,
	[set_num] [varchar](20) NULL,
	[ErrorCode] [int] NULL,
	[ErrorColumn] [int] NULL,
	[load_date] [datetime] NULL
);

CREATE TABLE [rejects].[elements](
	[element_id] [varchar](10) NULL,
	[part_num] [varchar](20) NULL,
	[color_id] [int] NULL,
	[ErrorCode] [int] NULL,
	[ErrorColumn] [int] NULL,
	[load_date] [datetime] NULL
);

CREATE TABLE [rejects].[colors](
	[id] [int] NULL,
	[name] [varchar](200) NULL,
	[rgb] [varchar](6) NULL,
	[is_trans] [bit] NULL,
	[ErrorCode] [int] NULL,
	[ErrorColumn] [int] NULL,
	[load_date] [datetime] NULL
); 