CREATE TABLE orders (
                        id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
                        table_id UUID NOT NULL,
                        waiter_id UUID NOT NULL,
                        CONSTRAINT fk_orders_table
                            FOREIGN KEY (table_id)
                                REFERENCES tables(id)
                                ON DELETE CASCADE,
                        CONSTRAINT fk_orders_waiter
                            FOREIGN KEY (waiter_id)
                                REFERENCES users(id)
                                ON DELETE CASCADE
);
