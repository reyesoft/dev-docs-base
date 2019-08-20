---
resource: products
singular: product
permalink: /docs/resources/products/
section: Products
partOf: company
attributes:
  - name: name
    valuetype: string
    observation: required
  - name: description
    valuetype: text
  - name: sku
    valuetype: string
  - name: internal_code
    valuetype: string
  - name: supplier_code
    valuetype: string
  - name: conduct
    valuetype: common | compound | variant_common | variant_parent
    observation: required
  - name: product_type
    valuetype: service | product
  - name: duration
    valuetype: int
  - name: stock_type
    valuetype: disabled | negative | positive
  - name: replacement_cost
    valuetype: float
    observation: required
  - name: price
    crud: read
    valuetype: float
  - name: price_with_tax
    crud: read
    valuetype: float
  - name: price_subdist
    crud: read
    valuetype: float
  - name: price_prevent
    crud: read
    valuetype: flaot
  - name: cost_with_tax
    valuetype: float
    observation: Only saves cost calculated based on cost with tax
  - name: stock_type
    valuetype: disabled | negative | positive
    observation: required
  - name: stock
    valuetype: float
    crud: read
  - name: stock_alert
    valuetype: float
  - name: stock_alert_percent
    valuetype: float
    crud: read
  - name: stock_desired
    valuetype: float
  - name: high
    valuetype: float
  - name: width
    valuetype: float
  - name: length
    valuetype: float
  - name: weight
    valuetype: float
  - name: weight_element
    valuetype: float
  - name: units_per_package
    valuetype: int
  - name: units_per_box
    valuetype: int
  - name: allow_fractions
    valuetype: boolean
relationships:
  - resource: users
    alias: author
  - resource: categories
    alias: category
  - resource: currencies
    alias: currency
  - resource: product_products
    alias: compound_children
    hasMany: true
  - resource: product_products
    alias: compound_parents
    hasMany: true
  - resource: futureprices
    hasMany: true
  - resource: inventories
    hasMany: true
  - resource: measures
    hasMany: true
  - resource: photos
    hasMany: true
  - resource: pricelist_products
    hasMany: true
  - resource: taxes
    alias: tax
  - resource: entities
    alias: suppliers
    hasMany: true
  - resource: products
    alias: variants_children
    hasMany: true
  - resource: products
    alias: variants_parents
    hasMany: true
filters:
  - attribute: name
    type: like
    multivalue: false
  - attribute: sku
    type: equals
    multivalue: false
  - attribute: internal_code
    type: equals
    multivalue: false
  - attribute: supplier_code
    type: equals
    multivalue: false
  - attribute: product_type
    type: equals
    multivalue: false
  - attribute: category_id
    type: equals
    multivalue: false
  - attribute: deleted
    type: bool
    multivalue: false
sorts:
  - attribute: stock_alert_percent
    enabled: true
entry_points:
  name: pricelists
---

#### Special relationships
Si es un producto en particular, entonces.


[pricelist_products](pricelist-products) `hasMany`{: .code}

[futureprices](futureprices) `hasMany`{: .code}

Si el atributo **conduct** es `variant_parent`{: .code}, entonces.

[variants_children](variants-children) `hasMany`{: .code}

Si el atributo **conduct** es `variant_common`{: .code}, entonces.

[variants_parents](variants-parents) `hasMany`{: .code}

[compound_parents](compound-parents) `hasMany`{: .code}

Si el atributo **conduct** es `compound`{: .code}, entonces.

[compound_children](compound-children) `hasMany`{: .code}

Si el atributo **conduct** es `common`{: .code}, entonces.

[compound_parents](compound-parents) `hasMany`{: .code}
