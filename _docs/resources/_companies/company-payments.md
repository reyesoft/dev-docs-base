---
resource: company_payments
singular: company_payment
permalink: /docs/resources/company_payments/
partOf: company
section: Companies
attributes:
  - name: amount
    crud: read
    valuetype: float
  - name: invoice
    crud: read
  - name: description
    crud: read
    valuetype: string
  - name: observations
    crud: read
    valuetype: string
  - name: status
    crud: read
    valuetype: uncredited (default) | only (uncredited | credited | in_observation)
  - name: payment_code
    crud: read
    valuetype: string
  - name: payment_type
    crud: read
    valuetype: emitted_documents | auto_renovation | manual_activation
  - name: months
    crud: read
    valuetype: int
relationships:
  - resource: plans
    alias: plan
    hasMany: false
filters: null
entry_points:
  methods:
    delete: false
    post: false
    patch: false
---
