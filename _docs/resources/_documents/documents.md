---
resource: documents
singular: document
permalink: /docs/resources/documents/
section: Documents
attributes:
  - name: section
    crud: create, read
    valuetype: sales | purchases
  - name: receipt_type
    crud: create, read
    valuetype: invoice | credit | debit | order_sell | order_buy | quotation | zeta
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
  - resource: entities
    hasMany: false
    alias: entity
  - resource: currencies
    alias: currency
    hasMany: false
  - resource: receipts
    hasMany: false
    alias: receipt
  - resource: physicalpos
    hasMany: false
  - resource: fiscalpos
    hasMany: false
  - resource: closure_receipts
    hasMany: false
    alias: closureReceipt
  - resource: cashier_entries
    hasMany: true
  - resource: documents
    hasMany: true
  - resource: details
    hasMany: true
entry_points:
  methods:
    delete: false
    post: false
    patch: false
---
