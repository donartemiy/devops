CREATE INDEX idx_order_product_order_id ON public.order_product (order_id);

CREATE INDEX idx_orders_status_date_created ON public.orders (status, date_created);