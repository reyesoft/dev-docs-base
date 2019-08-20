---
resource: futureprices
singular: futureprice
permalink: /docs/resources/futureprices/
section: Products
attributes:
  - name: replacement_cost
    valuetype: float
    observation: required
  - name: fortype
    valuetype: cost(default) | promotion | automatic
    observation: required
  - name: date_from
    valuetype: datetimew3c
    observation: required
  - name: date_to
    valuetype: datetimew3c
  - name: stock_end
    valuetype: int
  - name: sold_units
    valuetype: int
  - name: activated
    valuetype: bool
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

