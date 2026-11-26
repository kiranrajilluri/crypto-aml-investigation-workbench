-- 1. Create the main SDN entities table
CREATE TABLE sdn_entities (
    ent_id SERIAL PRIMARY KEY,
    ent_num INTEGER UNIQUE NOT NULL,
    sdn_name TEXT NOT NULL,
    sdn_type TEXT,
    programme TEXT,
    remarks TEXT
);

-- 2. Create the normalized crypto addresses table
CREATE TABLE crypto_addresses (
    address_id SERIAL PRIMARY KEY,
    ent_num INTEGER REFERENCES sdn_entities(ent_num),
    entity_name TEXT,
    currency TEXT,
    wallet_address TEXT
);

-- 3. Extract crypto addresses from the raw remarks text using Regex
INSERT INTO crypto_addresses (ent_num, entity_name, currency, wallet_address)
SELECT 
    s.ent_num, 
    s.sdn_name, 
    m[1] AS currency, 
    m[2] AS wallet_address
FROM sdn_entities s
CROSS JOIN LATERAL regexp_matches(s.remarks, 'Digital Currency Address - ([A-Z]+)\s+([a-zA-Z0-9]+)', 'g') AS m;