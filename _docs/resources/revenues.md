---
resource: revenues
permalink: /docs/resources/revenues/
partOf: company
attributes:
  - name: cost
    crud: read
  - name: commission
    crud: read
  - name: total
    crud: read
  - name: revenue
    crud: read
  - name: from
    crud: read
  - name: to
    crud: read
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
    put: false
    get: false
---

`GET`{: .get} http://api.multinexo.com/v1/company/{company_id}/revenues
