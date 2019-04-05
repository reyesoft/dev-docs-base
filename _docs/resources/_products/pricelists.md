---
resource: pricelist
permalink: /docs/resources/pricelist/
section: Products
attributes:
  - name: name
  - name: company_id
  - name: client_price
  - name: subdist_percent
  - name: prevent_percent
  - name: deleted_at
    crud: read
    valuetype: datetimew3c
relationships:
  - resource: entities
    hasMany: true
  - resource: prielist_products
    hasMany: true
filters:
  - attribute: deleted
    multivalue: false
    values: null|onlyTrashed|withTrashed
---
