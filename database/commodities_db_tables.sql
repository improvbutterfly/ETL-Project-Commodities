-- Metals

CREATE TABLE "gold" (
    "date" date   NOT NULL,
    "usd_per_oz" numeric   NOT NULL,
    CONSTRAINT "pk_gold" PRIMARY KEY (
        "date"
     )
);

CREATE TABLE "silver" (
    "date" date   NOT NULL,
    "usd_per_oz" numeric   NOT NULL,
    CONSTRAINT "pk_silver" PRIMARY KEY (
        "date"
     )
);

CREATE TABLE "platinum" (
    "date" date   NOT NULL,
    "usd_per_oz" numeric   NOT NULL,
    CONSTRAINT "pk_platinum" PRIMARY KEY (
        "date"
     )
);

CREATE TABLE "palladium" (
    "date" date   NOT NULL,
    "usd_per_oz" numeric   NOT NULL,
    CONSTRAINT "pk_palladium" PRIMARY KEY (
        "date"
     )
);

-- Crops

CREATE TABLE "coffee" (
    "date" date   NOT NULL,
    "usd_per_metric_ton" numeric   NOT NULL,
    CONSTRAINT "pk_coffee" PRIMARY KEY (
        "date"
     )
);

CREATE TABLE "corn" (
    "date" date   NOT NULL,
    "usd_per_bushel" numeric   NOT NULL,
    CONSTRAINT "pk_corn" PRIMARY KEY (
        "date"
     )
);

CREATE TABLE "cotton" (
    "date" date   NOT NULL,
    "usd_per_lb" numeric   NOT NULL,
    CONSTRAINT "pk_cotton" PRIMARY KEY (
        "date"
     )
);

CREATE TABLE "sugar" (
    "date" date   NOT NULL,
    "usd_per_lb" numeric   NOT NULL,
    CONSTRAINT "pk_sugar" PRIMARY KEY (
        "date"
     )
);

CREATE TABLE "cocoa" (
    "date" date   NOT NULL,
    "usd_per_metric_ton" numeric   NOT NULL,
    CONSTRAINT "pk_cocoa" PRIMARY KEY (
        "date"
     )
);

-- Livestock

CREATE TABLE "feeder_cattle" (
    "date" date   NOT NULL,
    "usd_per_lb" numeric   NOT NULL,
    CONSTRAINT "pk_feeder_cattle" PRIMARY KEY (
        "date"
     )
);

CREATE TABLE "live_cattle" (
    "date" date   NOT NULL,
    "usd_per_lb" numeric   NOT NULL,
    CONSTRAINT "pk_live_cattle" PRIMARY KEY (
        "date"
     )
);

CREATE TABLE "lean_hogs" (
    "date" date   NOT NULL,
    "usd_per_lb" numeric   NOT NULL,
    CONSTRAINT "pk_live_hogs" PRIMARY KEY (
        "date"
     )
);

-- Energy

CREATE TABLE "natural_gas" (
    "date" date   NOT NULL,
    "usd_per_million_btu" numeric   NOT NULL,
    CONSTRAINT "pk_natural_gas" PRIMARY KEY (
        "date"
     )
);

CREATE TABLE "crude_oil" (
    "date" date   NOT NULL,
    "usd_per_barrel" numeric   NOT NULL,
    CONSTRAINT "pk_crude_oil" PRIMARY KEY (
        "date"
     )
);

-- Other commodities

CREATE TABLE "palm_oil" (
    "date" date   NOT NULL,
    "usd_per_metric_ton" numeric   NOT NULL,
    CONSTRAINT "pk_palm_oil" PRIMARY KEY (
        "date"
     )
);

CREATE TABLE "rubber" (
    "date" date   NOT NULL,
    "usd_per_metric_ton" numeric   NOT NULL,
    CONSTRAINT "pk_rubber" PRIMARY KEY (
        "date"
     )
);

