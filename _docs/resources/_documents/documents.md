---
resource: documents
permalink: /docs/resources/documents/
section: Documents
attributes:
  - name: section
    crud: create, read
    valuetype: sales | purchases
  - name: receipt_type
    crud: create, read
    valuetype: (empty string) | invoice | credit | debit | order_sell | order_buy | quotation | zeta
  - name: receipt_volume
    crud: read
    valuetype: number
  - name: receipt_number
    crud: read
    valuetype: number
  - name: total_commission
    crud: read
    valuetype: decimal
  - name: total_cost
    crud: read
    valuetype: decimal
  - name: total_net_price
    crud: read
    valuetype: decimal
  - name: total_final_price
    crud: read
    valuetype: decimal
  - name: discount_percent
    crud: read
    valuetype: decimal
  - name: discount_amount
    crud: read
    valuetype: decimal
  - name: emission_date
    crud: read
    valuetype: datetimew3c
  - name: cae
    crud: read
  - name: cae_expiration_date
    crud: read
    valuetype: datetimew3c
  - name: observation
    crud: read
  - name: show_amounts
    valuetype: true | false
  - name: canceled
    valuetype: true | false
  - name: fiscal_observation
  - name: status
    valuetype: draft | failed | queued | confirmed
  - name: created_at
    crud: read
    valuetype: datetimew3c
  - name: updated_at
    crud: read
    valuetype: datetimew3c
  - name: deleted_at
    crud: read
    valuetype: datetimew3c
relationships:
  - resource: users
    alias: user
    hasMany: false
  - resource: companies
    hasMany: false
    alias: company
  - resource: entities
    hasMany: false
    alias: entity
  - resource: currencies
    alias: currency
    hasMany: false
  - resource: entities
    alias: seller
    hasMany: false
  - resource: receipt
    hasMany: false
  - resource: physicalpos
    hasMany: false
  - resource: cashier_entries
    hasMany: true
filters: null
---
