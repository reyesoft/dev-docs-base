---
resource: inventories
permalink: /docs/resources/inventories/
partOf: company
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
entry_points:
  methods:
    delete: false
    put: false
    post: false
---

#### Special entry points

`GET`{: .get} http://api.multinexo.com/v1/companies/{company_id}/products/{product_id}/inventories/{inventory_id}  
`GET`{: .get} http://api.multinexo.com/v1/companies/{company_id}/products/{product_id}/inventories  
`GET`{: .get} http://api.multinexo.com/v1/companies/{company_id}/inventories

