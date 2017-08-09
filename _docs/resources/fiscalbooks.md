---
resource: fiscalbooks
permalink: /docs/resources/fiscalbooks/
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
relationships:
  - resource: users
    hasMany: false
filters: null
---
