---
resource: futureprices
permalink: /docs/resources/futureprices/
section: Products
attributes:
  - name: replacement_cost
  - name: fortype
    valuetype: cost(default)|promotion
  - name: date_from
    valuetype: datetimew3c
  - name: date_to
    valuetype: datetimew3c
  - name: company_id
  - name: stock_end
  - name: sold_units
  - name: product_id
    crud: create
  - name: created_at
    crud: read
    valuetype: datetimew3c
  - name: updated_at
    crud: read
    valuetype: datetimew3c
  - name: deleted_at
    crud: read
    valuetype: datetimew3c
  - name: activated
    crud: read
relationships:
  - resource: products
    alias: product
  - resource: pricelist_products
    hasMany: true
filters: null
---

#### Special entry points

`GET`{: .get} http://api.multinexo.com/v1/companies/{company_id}/products/{product_id}/futureprices

**Observacion**
Se elimina la relación con company ya que esta información se envía en el token.

