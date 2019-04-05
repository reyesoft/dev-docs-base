---
resource: transactions
permalink: /docs/resources/transactions/
section: Cashier
partOf: company
attributes:
  - name: date
    valuetype: datetimew3c
    crud: read
  - name: due_date
    valuetype: datetimew3c
  - name: observations
  - name: amount
    crud: 'create, read'
    valuetype: number
  - name: entity_id
  - name: order_id
    crud: read
  - name: currency_id
    crud: create
relationships:
  - resource: entities
    alias: entity
    hasMany: false
  - resource: orders
    hasMany: true
  - resource: availabilities
    hasMany: true
  - resource: cashier_entries
    hasMany: true
filters: null
entry_points:
  methods:
    delete: false
---

**Included**

- availabilities: 1../required

#### Entry Points
```
GET companies/{company_id}/entities/{entity_id}/transactions
```
