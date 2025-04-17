CREATE TABLE order_items (
                             id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
                             order_id UUID NOT NULL,
                             dish_id UUID NOT NULL,
                             quantity INTEGER NOT NULL,
                             CONSTRAINT fk_order_items_order
                                 FOREIGN KEY (order_id)
                                     REFERENCES orders(id)
                                     ON DELETE CASCADE,
                             CONSTRAINT fk_order_items_dish
                                 FOREIGN KEY (dish_id)
                                     REFERENCES dishes(id)
                                     ON DELETE CASCADE
);
