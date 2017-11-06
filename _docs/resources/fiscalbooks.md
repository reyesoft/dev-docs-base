---
resource: fiscalbooks
permalink: /docs/resources/fiscalbooks/
partOf: company
attributes:
  - name: email
  - name: alias
    crud: 'read, update'
  - name: fiscalbook_type
    crud: 'create, read'
    valuetype: buys | sells
  - name: from
    crud: 'create, read'
    valuetype: datetimew3c
  - name: to
    crud: 'create, read'
    valuetype: datetimew3c
  - name: initial_folio
    crud: 'create, read'
  - name: net
    crud: read
  - name: total
    crud: read
  - name: url_pdf
    crud: read
  - name: url_csv
    crud: read
  - name: url_xls
    crud: read
  - name: url_citi
    crud: read
relationships: null
filters: null
entry_points:
  methods:
    put: false
    delete: false
---

#### Special JSON-API entry points
`GET`{: .get} [...]/v1/companies/{company_id}/fiscalbooks/{fiscalbook_id}/{type}/pdf

`GET`{: .get} [...]/v1/companies/{company_id}/fiscalbooks/{fiscalbook_id}/{type}/xls

`GET`{: .get} [...]/v1/companies/{company_id}/fiscalbooks/{fiscalbook_id}/{type}/csv

`GET`{: .get} [...]/v1/companies/{company_id}/fiscalbooks/{fiscalbook_id}/{type}/citi

Donde  
**type** `buys | sells`{: .code}
