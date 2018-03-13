---
resource: plans
permalink: /docs/resources/plans/
section: Companies
attributes:
  - name: name
    crud: read
  - name: key
    crud: read
  - name: price_per_document
    crud: read
  - name: amount
    crud: read
  - name: limit
    crud: read
relationships:
  - resource: company_payments
    hasMany: true
filters: null
---
