---
resource: companyPayments
permalink: /docs/resources/companyPayments/
attributes:
  - name: amount
    crud: read
  - name: invoice
    crud: read
  - name: description
    crud: read
  - name: observations
    crud: read
  - name: status
    crud: read
    valuetype: uncredited (default) | only (uncredited | credited | in_observation)
  - name: payment_code
    crud: read
  - name: payment_type
    crud: read
  - name: months
    crud: read
    valuetype: datetimew3c
relationships:
  - resource: plans
    hasMany: false
filters: null
---

**API point of access**<br>
index: [...]/v1/companies/{company_id}/company_payments<br>
show: [...]/v1/companies/{company_id}/company_payments/{company_payment_id}

**Observations**<br>
Si bien no se puede modificar mediante la API, se define en algunos casos 'required' haciendo referencia al ABM del Saiyajin.
