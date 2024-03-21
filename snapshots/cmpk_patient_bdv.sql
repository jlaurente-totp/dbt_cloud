{% snapshot cmpk_patient_bdv %}

{{
    config(
    target_schema='BDV',
    unique_key='patunique',
    strategy='timestamp',
    updated_at='updated_at',
    invalidate_hard_deletes=True
)
}}
select * FROM {{ source('cmpk','patient_rdv') }}

{% endsnapshot %}