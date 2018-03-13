---
resource: company_payments
permalink: /docs/resources/company-payments/
partOf: company
section: Companies
attributes:
  - name: amount
    crud: read
  - name: invoice
    crud: read
  - name: description
    crud: read
  - name: observations
    crud: read
  - name: status
    crud: read
    valuetype: uncredited (default) | only (uncredited | credited | in_observation)
  - name: payment_code
    crud: read
  - name: payment_type
    crud: read
  - name: months
    crud: read
    valuetype: datetimew3c
relationships:
  - resource: plans
    hasMany: false
filters: null
---
