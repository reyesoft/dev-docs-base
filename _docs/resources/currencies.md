---
resource: currencies
permalink: /docs/resources/currencies/
section: Recursos
attributes:
  - name: name
    crud: read
  - name: code_afip
    crud: read
  - name: code_iso
    crud: read
  - name: symbol
    crud: read
  - name: quotation_usd
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
relationships: null
filters: null
entry_points:
  methods:
    delete: false
---
