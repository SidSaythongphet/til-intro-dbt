with

payments as (

    select *
    
    from {{ ref('stg_stripe__payment') }}

),

successful as (

    select *

    from payments

    where status = 'success'

)

select * from successful