WITH cmpk_patient_rdv AS (
    SELECT * FROM {{ ref('cmpk_patient_stg')}}
)
SELECT
      patunique         AS src_pat_acct_id
    , location          AS src_pat_location_id
    , billunique        AS src_pat_bill_acct_id
    , familyunique      AS src_pat_fam_acct_id
    , last_mod          AS src_last_mod_dt
    , birth             AS src_birth_dt
    , fam_id            AS src_pat_fam_id
    , last              AS src_last_nm
    , first             AS src_first_nm
    , middle            AS src_middle_nm
    , sex               AS src_sex
    , salute            AS src_salutation_dsc
    , doctor            AS src_provider_cd
    , street            AS src_street_nm
    , city              AS src_city_nm
    , state             AS src_state_cd
    , zip               AS src_zip_cd
    , hphone            AS src_home_phone_nbr
    , wphone            AS src_work_phone_nbr
    , wphonex           AS src_work_phon_ex_nbr
    , added             AS src_pat_add_dt
    , billrel           AS src_pat_bill_acct_rel
    , ref_tot           AS src_referred_pat_tot
    , user1             AS src_addtl_user_info1_txt
    , user2             AS src_addtl_user_info2_txt
    , user3             AS src_addtl_user_info3_txt
    , user4             AS src_addtl_user_info4_txt
    , user5             AS src_addtl_user_info5_txt
    , plan              AS src_plan_type_dsc
    , last_svc          AS src_last_svc_dt
    , visits            AS src_visit_encounter_nbr
    , email             AS src_email_address_txt
    , suffix            AS src_suffix_nm
    , cellphone         AS src_mobile_phone_nbr
    , cntrystdc         AS src_cntry_std_cd
    , addrstdc          AS src_addr_std_cd
    , active            AS src_pat_active_ind
    , langstdc          AS src_lang_std_cd
    , racestdc          AS src_race_std_cd
    , ethnicstdc        AS src_ethnic_std_cd
    , marstastdc        AS src_marsta_std_cd
    , optout            AS src_opt_out_ind
    , inscoprivacy      AS src_insco_privacy_ind
    , deceased          AS src_deceased
    , race2stdc         AS src_race2_std_cd
    , optoutportal      AS src_opt_out_portal_ind
    , optoutreminder    AS src_opt_out_reminder_ind
    , mothermaidenname  AS src_mother_maiden_nm
    , erxconsent        AS src_erx_consent_ind

    , 'CMPK'            AS src_audit_SourceSysId
    , '20240321'          AS src_audit_BatchId
FROM cmpk_patient_rdv