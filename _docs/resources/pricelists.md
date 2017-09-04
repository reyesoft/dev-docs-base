---
resource: pricelist
permalink: /docs/resources/pricelist/
attributes:
  - name: name
  - name: company_id
    crud: read
  - name: name
  - name: percent_price
  - name: percent_subdist
  - name: percent_prevent
  - name: created_at
    crud: read
    valuetype: datetimew3c
  - name: updated_at
    crud: read
    valuetype: datetimew3c
  - name: deleted_at
    crud: read
    valuetype: datetimew3c
relationships: null
filters:
  - attribute: trashed
    multivalue: false
    values: null|onlyTrashed|withTrashed
---
