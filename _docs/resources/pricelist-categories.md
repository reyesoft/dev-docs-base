---
resource: pricelist_categories
permalink: /docs/resources/pricelist-categories/
partOf: company
attributes:
  - name: price
  - name: price_type
    crud: read
  - name: percent_subdist
  - name: percent_subdist_type
    crud: read
  - name: percent_prevent
  - name: percent_prevent_type
    crud: read
  - name: category_id
  - name: pricelist_id
relationships:
  - resource: pricelist
    hasMany: false
  - resource: products
    hasMany: false
filters: null
entry_points:
  methods:
    delete: false
    post: false
    put: false
    get: false
---

#### JSON-API Entry points

`GET`{: .get} http://api.multinexo.com/v1/companies/{company_id}/categories/{category_id}/pricelist_categories