---
resource: companies
permalink: /docs/resources/companies/
section: Companies
partOf: user
attributes:
  - name: name
  - name: legal_name
  - name: abbreviation
  - name: description
  - name: cuit
  - name: gross_income
  - name: logo_url
    crud: read
  - name: street_name
  - name: street_number
  - name: phone
  - name: fiscal_ws
    crud: 'create, update'
  - name: fiscal_ws_status
    crud: read
    valuetype: (empty string) | waiting | ok
  - name: remaining_documents
  - name: status
    valuetype: activated | suspended | redeem
  - name: activities_start_date
  - name: seat_tim
  - name: establishment_number
  - name: department
  - name: province
  - name: started_at
    valuetype: datetimew3c
  - name: expire_at
    valuetype: datetimew3c
  - name: check_at
    crud: create
    valuetype: datetimew3c
  - name: created_at
    crud: read
    valuetype: datetimew3c
relationships:
  - resource: responsibilities
  - resource: users
  - resource: fiscalpos
    hasMany: true
  - resource: plans
  - resource: company_payments
    hasMany: true
filters: null
---

#### Special entry points

`POST`{: .post} [...]v1/users/{user_id}/companies/{company_id}/logo  
`POST`{: .post} [...]v1/users/{user_id}/companies/{company_id}/upload/crt  
`DELETE`{: .delete} `POST`{: .post} [...]v1/users/{user_id}/companies/{company_id}/logo/{nameImage}  
`GET`{: .get} [...]v1/users/{user_id}/companies/{company_id}/restore  
`GET`{: .get} [...]v1/users/{user_id}/companies/{company_id}/download/csr  
`GET`{: .get} [...]v1/users/{user_id}/companies/{company_id}/checkWsAfipStatus  
`GET`{: .get} [...]v1/users/{user_id}/companies/{company_id}/establishDefaultAfipWs  

