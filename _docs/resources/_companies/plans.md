---
resource: plans
singular: plan
permalink: /docs/resources/plans/
section: Companies
attributes:
  - name: name
    crud: read
    valuetype: string
  - name: key
    crud: read
    valuetype: string
  - name: price_per_document
    crud: read
    valuetype: float
  - name: amount
    crud: read
    valuetype: float
  - name: limit
    crud: read
    valuetype: int
relationships:
  - resource: company_payments
    hasMany: true
filters: null
entry_points:
  methods:
    post: false
    patch: false
    delete: false
---
