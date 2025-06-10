with 

source as (

    select * from {{ source('final_project_clean', 'transactions') }}

),

renamed as (

    select
        t_dat AS date_date
        customer_id,
        article_id,
        price,
        sales_channel_id

    from source

)

select * from renamed
