---
resource: multiple_documents
permalink: /docs/resources/multiple_documents/
section: Documents
partOf: company
attributes:
  - name: action
    valuetype: pdf | confirm
  - name: download_url
    crud: read
relationships:
  - resource: documents
    hasMany: true
  - resource: physicalpos
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
