---
resource: invoices
singular: invoice
permalink: /docs/resources/invoices/
section: Documents
partOf: company
attributes:
  - name: section
    crud: create,read
    valuetype: sales | purchases
  - name: letter
    valuetype: A | B | C | E | X
  - name: receipt_type
    crud: create,read
    valuetype: invoice | debit | credit
  - name: receipt_volume
  - name: receipt_number
  - name: total_commission
  - name: net
  - name: total
  - name: discount_percent
  - name: discount_amount
  - name: status
    valuetype: draft | queued | falied | confirmed
  - name: show_amounts
    valuetype: true/false
  - name: cae READ
  - name: cae_expiration_date
  - name: observation
  - name: pdf_url
    crud: read
  - name: canceled
    valuetype: true | false
  - name: fiscal_blocked
  - name: fiscal_observation
  - name: generate_order WRITE
  - name: emission_date
    valuetype: datetimew3c
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
    alias:  entity
  - resource: currencies
    hasMany: false
    alias: currency
  - resource: physicalpos
    hasMany: false
  - resource: receipts
    hasMany: false
    alias: receipt
  - resource: fiscalpos
    hasMany: true
  - resource: details
    hasMany: true
  - resource: orders
    hasMany: true
  - resource: invoices
    hasMany: true
  - resource: cashier_entries
    hasMany: true
filters:
  - attribute: emission_date
    type: date_range
    multivalue: false
  - attribute: receipt_volume
    type: equals
    multivalue: false
  - attribute: receipt_number
    type: equals
    multivalue: false
  - attribute: section
    type: equals
    multivalue: true
  - attribute: receipt_type
    type: equals
    multivalue: true
  - attribute: status
    type: equals
    alias: draft | confirmed | queued | failed
    multivalue: true
  - attribute: entity.name
    type: like
    multivalue: false
  - attribute: letter
    type: equals
    alias: A | B | C
    multivalue: true
---

#### Special entry points

`GET`{: .get} [...]/v1/companies/{company_id}/invoices/{invoices_id}/pdf
