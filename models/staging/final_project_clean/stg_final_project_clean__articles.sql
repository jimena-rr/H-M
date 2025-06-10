with 

source as (

    select * from {{ source('final_project_clean', 'articles') }}

),

renamed as (

    select
        article_id,
        product_code,
        prod_name AS product_name,
        product_type_no,
        product_type_name,
        product_group_name,
        colour_group_name,
        index_name,
        index_group_name,
        section_name,
        garment_group_name,
        detail_desc

    from source

)

select * from renamed
WHERE product_group_name NOT IN (
    'Items',
    'Cosmetic',
    'Interior textile',
    'Furniture',
    'Garment and Shoe care',
    'Stationery',
    'Fun'
)
AND index_group_name != 'Baby/Children'