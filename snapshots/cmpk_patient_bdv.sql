{% snapshot cmpk_patient_bdv %}

{{
    config(
    target_schema='bdv',
    unique_key='SRC_PAT_ACCT_ID',
    strategy='timestamp',
    updated_at='SRC_LAST_MOD_DT',
    invalidate_hard_deletes=True
)
}}
select * FROM {{ source('cmpk','patient_rdv') }}

{% endsnapshot %}