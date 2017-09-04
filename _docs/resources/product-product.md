---
resource: product_product
permalink: /docs/resources/product-product/
attributes:
  - name: number
  - name: product_id
  - name: product_name
  - name: parent_product_id
  - name: qty
  - name: conduct
relationships:
  - resource: products
    hasMany: true
filters: null
---
