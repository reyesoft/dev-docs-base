---
resource: pricelist_categories
permalink: /docs/resources/pricelist_categories/
section: Products
partOf: company
attributes:
  - name: client_value
  - name: client_value_type
    crud: read
  - name: subdist_value
  - name: subdist_value_type
    crud: read
  - name: prevent_value
  - name: prevent_value_type
    crud: read
  - name: category_id
  - name: pricelist_id
relationships:
  - resource: pricelists
    alias: pricelist
  - resource: categories
    alias: category
filters: null
entry_points:
  methods:
    delete: false
    post: false
    patch: false
    get: false
---

#### JSON-API Entry points

`GET`{: .get} http://api.multinexo.com/v1/companies/{company_id}/categories/{category_id}/pricelist_categories
