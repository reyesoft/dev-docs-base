---
resource: inventories
permalink: /docs/resources/inventories/
attributes:
  - name: qty
    crud: read
  - name: current_stock_qty
    crud: read
  - name: unit_price
    crud: read
  - name: total_price
    crud: read
  - name: total
    crud: read
  - name: created_at
    crud: read
    valuetype: datetimew3c
  - name: updated_at
    crud: read
    valuetype: datetimew3c
relationships:
  - resource: products
    hasMany: true
filters: null
---

**Entry Points**

```
companies/{company_id}/products/{product_id}/inventories/{inventory_id}
companies/{company_id}/products/{product_id}/inventories
companies/{company_id}/inventories
```
