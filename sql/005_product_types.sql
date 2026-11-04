-- 005_product_types.sql: نوع المنتج (عادي / جراب موبايل)
alter table products add column if not exists product_kind text not null default 'normal';
alter table products add column if not exists phone_model text;
alter table products add column if not exists case_type text;
