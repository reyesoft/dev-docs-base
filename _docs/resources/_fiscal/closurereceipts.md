---
resource: closurereceipts
permalink: /docs/resources/closurereceipts/
section: Fiscal
partOf: company
attributes:
  - name: receipt_volume
  - name: receipt_number
  - name: fiscalbook_type
  - name: sales_total
  - name: sales_tax
  - name: sales_last_a
  - name: sales_last_bc
  - name: credit_total
  - name: credit_tax
  - name: credit_last_a
  - name: credit_last_bc
  - name: sales_documents
  - name: credit_documents
  - name: standard_no_fiscal_documents
  - name: no_fiscal_documents
  - name: canceled_qty
  - name: blocks_qty
  - name: letter
  - name: fiscal_blocked
    crud: read
  - name: fiscal_observation
    crud: read
relationships:
  - resource: documents
    hasMany: true
filters: null
entry_points:
  methods:
    delete: false
---
