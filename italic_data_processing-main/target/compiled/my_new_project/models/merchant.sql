with merchants as (

    select
        id as merchantId,
        first_name1 as first_name,
        last_name1 as last_name, 
        vendor_code as code, 
        vendor_name as name, 
        email1 as contact

    from aurora_postgres_italic.merchants

),

products as (

    select
        merchantId,
        title,
        handle,
        rating
    from aurora_postgres_italic.products

),

final as (

    select
        merchants.contact,
        merchants.first_name,
        merchants.last_name,
        merchants.code, 
        merchants.name, 
        products.title,
        products.handle,
        products.rating

    from products

    left join merchants using (merchantId)

)

select * from final limit 500