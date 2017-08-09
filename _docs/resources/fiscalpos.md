---
resource: fiscalpos
permalink: /docs/resources/fiscalpos/
attributes:
  - name: number
  - name: type
    valuetype: fiscal_printer|electronic|manual_a|manual_b|manual_c|manual_e
  - name: alias
  - name: status
  - name: fiscaltoken
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
filters: null
---
