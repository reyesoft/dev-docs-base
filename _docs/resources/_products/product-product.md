---
resource: product_product
permalink: /docs/resources/product_product/
section: Products
attributes:
  - name: product_id
    crud: create, read
  - name: product_name
    crud: read
    valuetype: string
  - name: parent_product_id
    crud: create, read
  - name: qty
    valuetype: int
relationships:
  - resource: products
    alias: parent
  - resource: products
    alias: child
filters: null
entry_points:
  methods:
    delete: false
---
