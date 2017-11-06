---
resource: futureprices
permalink: /docs/resources/futureprices/
attributes:
  - name: qty
    crud: read
  - name: replacement_cost
  - name: date_from
    valuetype: datetimew3c
  - name: date_to
    valuetype: datetimew3c
  - name: activated
    crud: read
  - name: fortype
    valuetype: cost(default)|promotion
  - name: stock_end
  - name: sold_units
    crud: read
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
  - resource: products
    hasMany: true
filters: null
---

**Included**  
pricelist_product resource: 1..*

**Observacion**  
Se elimina la relación con company ya que esta información se envía en el token.

#### POST Request example test
```javascript
{
    "data": {
        "type": "futureprices",
        "attributes": {
            "replacement_cost": "20",
            "update_type": "cost",
            "date_from": "12-04-2016"
        },
        "relationships": {
            "products": {
                "data": {
                    "type": "products",
                    "id": "163"
                }
            }
        }
    },
    "included": [
        {
            "type": "pricelist_products",
            "attributes": {
                "product_id": 163,
                "pricelist_id": 150,
                "price": 30,
                "percent_subdist": 20,
                "percent_prevent": 10,
                "percent_seller": 10,
            }
        },
        {
            "type": "pricelist_products",
            "id": "348",
            "attributes": {
                "product_id": 163,
                "pricelist_id": 151,
                "price": 30,
                "percent_subdist": 20,
                "percent_prevent": 10,
                "percent_seller": 10,
            }
        },
        {
            "type": "pricelist_products",
            "attributes": {
                "product_id": 163,
                "pricelist_id": 152,
                "price": 30,
                "percent_subdist": 20,
                "percent_prevent": 10,
                "percent_seller": 10,
            }
        },
        {
            "type": "pricelist_products",
            "attributes": {
                "product_id": 163,
                "pricelist_id": 153,
                "price": 30,
                "percent_subdist": 20,
                "percent_prevent": 10,
                "percent_seller": 10,
            }
        },
        {
            "type": "pricelist_products",
            "attributes": {
                "product_id": 163,
                "pricelist_id": 154,
                "price": 30,
                "percent_subdist": 20,
                "percent_prevent": 10,
                "percent_seller": 10,
            }
        }
    ]
}
```
