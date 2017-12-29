---
resource: multiple_documents
permalink: /docs/resources/multiple-documents/
partOf: company
attributes:
  - name: action
    valuetype: pdf | confirm
  - name: download_url
    crud: read
relationships:
  - resource: quotations
    hasMany: true
  - resource: orders
    hasMany: true
  - resource: invoices
    hasMany: true
filters: null
entry_points:
  methods:
    delete: false
    get: false
    post: false
    put: false
---

#### JSON-API Entry points

`POST`{: .post} [...]v1/company/{company_id}/multiple_documents/
