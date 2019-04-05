---
resource: cost_reports
permalink: /docs/resources/cost_reports/
section: Funds
partOf: company
attributes:
  - name: from
    valuetype: datetimew3c
  - name: to
    valuetype: datetimew3c
  - name: pdf_url
    crud: read
entry_points:
  methods:
    patch: false
---