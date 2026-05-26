CREATE TABLE IF NOT EXISTS "prices" (
    "id"              SERIAL PRIMARY KEY,
    "ticker"          TEXT NOT NULL,
    "date"            TIMESTAMPTZ NOT NULL,
    "open"            NUMERIC,
    "high"            NUMERIC,
    "low"             NUMERIC,
    "close"           NUMERIC,
    "volume"          BIGINT,
    "dividends"       NUMERIC,
    "stock_splits"    NUMERIC,
    "created_at"      TIMESTAMPTZ DEFAULT NOW(),
    UNIQUE ("ticker", "date")
);