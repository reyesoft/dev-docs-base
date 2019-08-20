---
resource: pricelist_categories
singular: pricelist_category
permalink: /docs/resources/pricelist_categories/
section: Products
partOf: company
attributes:
  - name: client_value
    valuetype: float
  - name: client_value_type
    crud: read
    valuetype: auto | percent | amount
  - name: subdist_value
    valuetype: float
  - name: subdist_value_type
    crud: read
    valuetype: auto | percent | amount
  - name: prevent_value
    valuetype: float
  - name: prevent_value_type
    crud: read
    valuetype: auto | percent
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
