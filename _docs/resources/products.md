---
resource: products
permalink: /docs/resources/products/
partOf: company
attributes:
  - name: name
  - name: description
  - name: sku
  - name: internal_code
  - name: supplier_code
  - name: parent_id
  - name: conduct
    crud: 'create,read,update'
    valuetype: common | compound | variant_common | variant_parent
  - name: product_type
  - name: duration
  - name: stock_type
    valuetype: disabled|negative|positive
  - name: replacement_cost
  - name: cost_with_tax 'Only saves cost calculated based on cost with tax'
  - name: stock
  - name: stock_alert
  - name: stock_desired
  - name: tax_id
  - name: high
    valuetype: float
  - name: width
    valuetype: float
  - name: length
    valuetype: float
  - name: weight
    valuetype: float
  - name: weight_element
  - name: units_per_package
    valuetype: int
  - name: units_per_box
    valuetype: int
  - name: allow_fractions
    valuetype: boolean
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
  - resource: pricelist_products
    hasMany: true
  - resource: suppliers
    hasMany: true
  - resource: categories
    alias: categories
    hasMany: false
  - resource: taxes
    hasMany: false
  - resource: measures
    hasMany: false
  - resource: currencies
    hasMany: false
  - resource: photos
    hasMany: true
  - resource: futureprices
    hasMany: true
  - resource: variant_parent
    hasMany: true
  - resource: variant_children
    hasMany: true
  - resource: compound_parent
    hasMany: true
  - resource: compound_children
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
  - attribute: trashed
    multivalue: false
    values: null|onlyTrashed|withTrashed
---

**Entry Points**

```
companies/{company_id}/products/{products_id}<br>
companies/{company_id}/pricelists/{pricelist_id}/products
```
