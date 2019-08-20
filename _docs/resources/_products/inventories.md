---
resource: inventories
singular: inventory
permalink: /docs/resources/inventories/
section: Products
partOf: company
attributes:
  - name: qty
    crud: create, read
    valuetype: float
  - name: current_stock_qty
    crud: create, read
    valuetype: float
  - name: unit_price
    crud: create, read
    valuetype: float
  - name: total_price
    crud: create, read
    valuetype: float
  - name: total
    crud: create, read
    valuetype: float
  - name: created_at
    crud: read
    valuetype: datetimew3c
relationships:
  - resource: products
    alias: product
  - resource: documents
    alias: document
filters: null
entry_points:
  methods:
    delete: false
    patch: false
    post: false
---

#### Special entry points

`GET`{: .get} http://api.multinexo.com/v1/companies/{company_id}/products/{product_id}/inventories/{inventory_id}

`GET`{: .get} http://api.multinexo.com/v1/companies/{company_id}/products/{product_id}/inventories

`GET`{: .get} http://api.multinexo.com/v1/companies/{company_id}/inventories
