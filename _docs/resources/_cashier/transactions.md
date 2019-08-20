---
resource: transactions
singular: transaction
permalink: /docs/resources/transactions/
section: Cashier
partOf: company
attributes:
  - name: due_date
    valuetype: datetimew3c
  - name: observations
  - name: amount
    crud: create, read
    valuetype: number
  - name: created_at
    crud: read
relationships:
  - resource: entities
    alias: entity
    hasMany: false
  - resource: currencies
    alias: currency
    hasMany: false
  - resource: documents
    hasMany: true
  - resource: cashier_entries
    hasMany: true
filters: null
entry_points:
  methods:
    delete: false
---

#### Entry Points

`GET`{: .get} [...]/v1/companies/{company_id}/entities/{entity_id}/transactions

`GET`{: .get} [...]/v1/companies/{company_id}/transactions/{transaction_id}/pdf
