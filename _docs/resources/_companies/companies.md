---
resource: companies
singular: company
permalink: /docs/resources/companies/
section: Companies
partOf: user
attributes:
  - name: name
    valuetype: string
    observation: required
  - name: legal_name
    valuetype: string
  - name: email
    valuetype: string
  - name: abbreviation
    valuetype: string
  - name: description
    valuetype: text
  - name: cuit
    valuetype: string
  - name: gross_income
    valuetype: string
  - name: logo_url
    valuetype: string
    crud: read
  - name: street_name
    valuetype: string
  - name: street_number
    valuetype: int
  - name: phone
    valuetype: string
  - name: fiscal_ws
    crud: create, update
    valuetype: (empty string) | wsfe | wsmtxca
  - name: fiscal_ws_status
    crud: read
    valuetype: (empty string) | waiting | ok
  - name: remaining_documents
    crud: read
    valuetype: int
  - name: status
    crud: read
    valuetype: activated | suspended | redeem
    observation: required
  - name: activities_start_date
    valuetype: string
  - name: seat_tim
    valuetype: string
  - name: establishment_number
    valuetype: string
  - name: department
    valuetype: string
  - name: province
    valuetype: string
  - name: started_at
    crud: read
    valuetype: datetimew3c
  - name: expire_at
    crud: read
    valuetype: datetimew3c
  - name: deleted_at
    crud: read
    valuetype: datetimew3c
relationships:
  - resource: responsibilities
    alias: responsibility
  - resource: users
    alias: user
  - resource: fiscalpos
    hasMany: true
  - resource: plans
    alias: plan
  - resource: company_payments
    hasMany: true
filters: 
  - attribute: deleted
    multivalue: true
    type: boolean
---

#### Special entry points

`POST`{: .post} [...]v1/users/{user_id}/companies/{company_id}/logo  
`POST`{: .post} [...]v1/users/{user_id}/companies/{company_id}/upload/crt  
`DELETE`{: .delete} [...]v1/users/{user_id}/companies/{company_id}/logo/{nameImage}  
`PATCH`{: .get} [...]v1/users/{user_id}/companies/{company_id}/restore  
`GET`{: .get} [...]v1/users/{user_id}/companies/{company_id}/download/csr
