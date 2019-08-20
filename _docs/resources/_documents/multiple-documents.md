---
resource: multiple_documents
singular: multiple_document
permalink: /docs/resources/multiple_documents/
section: Documents
partOf: company
attributes:
  - name: action
    valuetype: pdf | confirm | generate_order_sell | generate_order_buy | generate_invoice | generate_quotation
  - name: download_url
    crud: read
  - name: confirm
    crud: create
    valuetype: boolean
relationships:
  - resource: documents
    hasMany: true
  - resource: physicalpos
    hasMany: false
  - resource: fiscalpos
    hasMany: false
  - resource: entities
    alias: entity
    hasMany: false
filters: null
entry_points:
  methods:
    delete: false
    get: false
    post: false
    patch: false
---

#### JSON-API Entry points

`POST`{: .post} [...]v1/company/{company_id}/multiple_documents/
