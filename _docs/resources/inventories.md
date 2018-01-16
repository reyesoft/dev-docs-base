---
resource: inventories
permalink: /docs/resources/inventories/
section: Recursos
partOf: company
attributes:
  - name: qty
    crud: 'create, read'
  - name: current_stock_qty
    crud: 'create, read'
  - name: unit_price
    crud: 'create, read'
  - name: total_price
    crud: 'create, read'
  - name: total
    crud: 'create, read'
  - name: document_id
    crud: create
  - name: product_id
    crud: create
  - name: created_at
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
