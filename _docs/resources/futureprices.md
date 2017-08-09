---
resource: futureprices
permalink: /docs/resources/futureprices/
attributes:
  - name: qty
    crud: read
  - name: replacement_cost
  - name: date_from
    valuetype: datetimew3c
  - name: date_to
    valuetype: datetimew3c
  - name: activated
    crud: read
  - name: fortype
    valuetype: cost(default)|promotion
  - name: stock_end
  - name: sold_units
    crud: read
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
  - resource: products
    hasMany: true
filters: null
---
