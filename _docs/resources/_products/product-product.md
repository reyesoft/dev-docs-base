---
resource: product_product
permalink: /docs/resources/product-product/
section: Products
attributes:
  - name: product_id
  - name: product_name
    crud: read
  - name: parent_product_id
  - name: qty
  - name: conduct
relationships:
  - resource: products
    hasMany: true
filters: null
entry_points:
  methods:
    delete: false
---
