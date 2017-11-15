---
resource: details
permalink: /docs/resources/details/
partOf: company
attributes:
  - name: qty
  - name: cost
  - name: net
  - name: price
  - name: use_net_for_calculation
  - name: commission
  - name: product_name
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
    hasMany: false
  - resource: orders
    hasMany: false
filters: null
entry_points:
  methods:
    delete: false
    get: false
    post: false
    put: false
---

#### Special entry points from quotations

`DELETE`{: .delete} `PUT`{: .put} `GET`{: .get} [...]/v1/companies/{company_id}/quotations/{document_id}/details/{detail_id}  
`POST`{: .post} `GET`{: .get} [...]/v1/companies/{company_id}/quotations/{document_id}/details/  
#### Special entry points from orders

`DELETE`{: .delete} `PUT`{: .put} `GET`{: .get} [...]/v1/companies/{company_id}/orders/{document_id}/details/{detail_id}  
`POST`{: .post} `GET`{: .get} [...]/v1/companies/{company_id}/orders/{document_id}/details/  
#### Special entry points from invoices

`DELETE`{: .delete} `PUT`{: .put} `GET`{: .get} [...]/v1/companies/{company_id}/invoices/{document_id}/details/{detail_id}  
`POST`{: .post} `GET`{: .get} [...]/v1/companies/{company_id}/invoices/{document_id}/details/

Deprecar los puntos de entrada anteriores luego de:
[API-652](https://reyesoft.atlassian.net/browse/API-652)