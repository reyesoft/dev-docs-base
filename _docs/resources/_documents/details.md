---
resource: details
singular: detail
permalink: /docs/resources/details/
section: Documents
partOf: company
attributes:
  - name: qty
  - name: cost
  - name: net
  - name: price
  - name: commission
    crud: read
  - name: product_name
    crud: read
relationships:
  - resource: products
    hasMany: false
    alias: product
  - resource: orders
    hasMany: false
    alias: document
filters: null
entry_points:
  methods:
    delete: false
    get: false
    post: false
    patch: false
---

#### Special entry points from quotations

`DELETE`{: .delete} `PATCH`{: .patch} `GET`{: .get} [...]/v1/companies/{company_id}/quotations/{document_id}/details/{detail_id}  
`POST`{: .post} `GET`{: .get} [...]/v1/companies/{company_id}/quotations/{document_id}/details/
#### Special entry points from orders

`DELETE`{: .delete} `PATCH`{: .patch} `GET`{: .get} [...]/v1/companies/{company_id}/orders/{document_id}/details/{detail_id}  
`POST`{: .post} `GET`{: .get} [...]/v1/companies/{company_id}/orders/{document_id}/details/
#### Special entry points from invoices

`DELETE`{: .delete} `PATCH`{: .patch} `GET`{: .get} [...]/v1/companies/{company_id}/invoices/{document_id}/details/{detail_id}  
`POST`{: .post} `GET`{: .get} [...]/v1/companies/{company_id}/invoices/{document_id}/details/
