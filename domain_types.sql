CREATE DOMAIN email AS VARCHAR(255)
    CHECK (VALUE ~* '^[A-Za-z][A-Za-z0-9._]*@gmail\.com$');

-- --------------------------------------------------

CREATE DOMAIN uzbek_phone AS VARCHAR(17)
    CHECK ( VALUE ~ '^\+998\s?\d{2}\s?\d{3}\s?\d{4}$');

--  ------------------------------------

CREATE DOMAIN url AS TEXT
    CHECK (VALUE ~* '^https?://[^\s]+$');

--  --------------------------------------------

CREATE DOMAIN percentage AS NUMERIC(5,2)
    DEFAULT 0.00
    CHECK (VALUE BETWEEN 0 AND 100);







