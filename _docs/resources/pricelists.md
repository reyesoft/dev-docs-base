---
resource: pricelist
permalink: /docs/resources/pricelist/
attributes:
  - name: name
  - name: company_id
  - name: percent_price
  - name: percent_subdist
  - name: percent_prevent
  - name: deleted_at
    crud: read
    valuetype: datetimew3c
relationships: null
filters:
  - attribute: trashed
    multivalue: false
    values: null|onlyTrashed|withTrashed
---