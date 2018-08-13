---
resource: revenues
permalink: /docs/resources/revenues/
section: Documents
partOf: company
attributes:
  - name: cost
    crud: read
    valuetype: decimal
  - name: commission
    crud: read
    valuetype: decimal
  - name: total
    crud: read
    valuetype: decimal
  - name: revenue
    crud: read
    valuetype: decimal
  - name: date
    crud: read
    valuetype: datetimew3c
relationships: null
filters:
  - attribute: since
    type: date
    values: 2015-09-15T08:19:32.808Z
    multivalue: false
  - attribute: until
    type: date
    values: 2015-09-15T08:19:32.808Z
    multivalue: false
entry_points:
  methods:
    delete: false
    post: false
    patch: false
    get: false
---

`GET`{: .get} http://api.multinexo.com/v1/company/{company_id}/revenues
