CREATE TABLE dishes (
                        id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
                        name VARCHAR(255) NOT NULL,
                        description TEXT,
                        price NUMERIC(10, 2) NOT NULL
);
