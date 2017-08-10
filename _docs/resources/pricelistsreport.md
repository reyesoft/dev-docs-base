---
resource: pricelistsreport
permalink: /docs/resources/pricelistsreport/
attributes:
  - name: name
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
    hasMany: true
  - resource: pricelist
    hasMany: true
filters: null
---
