---
resource: companies
permalink: /docs/resources/companies/
attributes:
  - name: name
  - name: legal_name
  - name: abbreviation
  - name: description
  - name: cuit
  - name: gross_income
  - name: logo_url
    crud: read
  - name: street_name
  - name: street_number
  - name: phone
  - name: fiscal_ws_status
    crud: read
    valuetype: wait | ok
  - name: remaining_documents
    crud: read
  - name: status
    crud: read
    valuetype: activated | suspended | redeem
  - name: activities_start_date
  - name: seat_tim
  - name: establishment_number
  - name: department
  - name: province
  - name: started_at
    crud: read
    valuetype: datetimew3c
  - name: expire_at
    crud: read
    valuetype: datetimew3c
  - name: check_at
    crud: read
    valuetype: datetimew3c
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
  - resource: responsibilities
    hasMany: true
  - resource: users
    hasMany: true
  - resource: fiscalpos
    hasMany: true
  - resource: plans
    hasMany: true
filters: null
---

```javascript
"data": {
        "type": "companies",
        "id": "1973",
        "attributes": {
            "name": "Upton-Frami",
            "legal_name": "Upton Frami SRL",
            "abbreviation": "t_574",
            "description": "Qui ipsa nobis inventore.",
            "cuit": "2735663969",
            "gross_income": "123456",
            "logo_url": "http:\/\/localhost:8000\/images\/logos\/default.png",
            "street_name": "Ashlee Way",
            "street_number": 570,
            "phone": "738-979-0386 x4409",
            "fiscal_ws_status": "",
            "started_at": "2017-05-30T08:00:00+03:00",
            "expire_at": "2017-06-30T08:00:00+03:00",
            "remaining_documents": "150",
            "status": "activated"
        },
        "relationships": {
            "fiscalpos": {
                "data": []
            },
            "plans": {
                "data": {
                    "type": "plans",
                    "id": "1"
                }
            },
            "users": {
                "data": {
                    "type": "users",
                    "id": "1969"
                }
            },
            "responsibilities": {
                "data": {
                    "type": "responsibilities",
                    "id": "6"
                }
            }
        },
        "links": {
            "self": "http:\/\/localhost:8000\/v1\/users\/1969\/companies\/1973"
        }
    }
```
