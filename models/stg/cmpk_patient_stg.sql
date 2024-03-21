WITH cmpk_patient_stg AS (
    SELECT * FROM devl.stg.cmpk_patient_stg
)
SELECT
    patunique
,   "LOCATION"
,   billunique
,   familyunique
,   fam_id
,   last_mod
,   "LAST"
,   "FIRST"
,   middle
,   birth
,   sex
,   salute
,   doctor
,   street
,   city
,   state
,   zip
,   hphone
,   wphone
,   wphonex
,   added
,   billrel
,   ref_tot
,   user1
,   user2
,   user3
,   user4
,   user5
,   "PLAN"
,   last_svc
,   bill_ins
,   visits
,   disc_svc
,   disc_mat
,   comments
,   co_pay
,   todo_vst
,   tododate
,   picture
,   email
,   suffix
,   chartscand
,   hippasignd
,   cellphone
,   specneeds
,   prfcomstdc
,   celsvcstdc
,   maidenname
,   birthstate
,   cnntunique
,   cntrystdc
,   addrstdc
,   active
,   langstdc
,   racestdc
,   ethnicstdc
,   nickname
,   marstastdc
,   optout
,   inscoprivacy
,   deceased
,   race2stdc
,   optoutportal
,   optoutreminder
,   mothermaidenname
,   erxconsent
,   zzage
,   zzscanned
,   zzehr
,   zzhipaa
,   zzphoncell
,   zzdnu
,   zzmiddle
,   zzcountry
,   zzencoded
,   zzneedasst
,   zzlanguage
,   zzothrendr
,   zzpat_nick
,   zzstreet2
,   zzstreet3
,   zzsc
,   zzphic
,   zzpwd
FROM cmpk_patient_stg