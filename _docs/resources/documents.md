---
resource: documents
permalink: /docs/resources/documents/
attributes:
  - name: section
    valuetype: sales | purchases
  - name: receipt_type
    valuetype: '' | invoice | credit | debit | order_sell | order_buy | quotation | zeta
  - name: receipt_volume
    valuetype: number
  - name: receipt_number
    valuetype: number
  - name: total_commission
    valuetype: decimal
  - name: total_cost
    valuetype: decimal
  - name: total_net_price
    valuetype: decimal
  - name: total_final_price
    valuetype: decimal
  - name: emission_date
    valuetype: datetimew3c
  - name: cae
    valuetype: string
  - name: cae_expiration_date
    valuetype: datetimew3c
  - name: observation
    valuetype: string
  - name: show_amounts
    valuetype: true | false
  - name: canceled
    valuetype: true | false
  - name: fiscal_observation
    valuetype: string
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
    hasMany: false
  - resource: companies
    hasMany: false
  - resource: entities
    hasMany: false
  - resource: currencies
    hasMany: false
  - resource: sellers
    hasMany: false
  - resource: receipts
    hasMany: false
  - resource: physicalpos
    hasMany: false
  - resource: cashier_entries
    hasMany: true
filters: null
---
