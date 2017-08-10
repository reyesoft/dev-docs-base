---
resource: export
permalink: /docs/resources/export/
attributes: null
relationships: null
filters: null
---

**REQUEST GET:**<br>
<http://enviroment.example/v1/companies/{company_id}/export/{resource}/type/{type}>

**RESPONSE GET**

```javascript
{    
status:"success"
url:"http://enviroment.example/v1/companies/{company_id}/resource/{resource}/exports/{type}/key/{key}"
}
```

**EXAMPLE URL GET KEY**

<http://localhost:8000/v1/companies/1459/export/products/type/xls><br>
**EXAMPLE URL DOWNLOAD FILE**

<http://localhost:8000/v1/companies/1459/resource/products/exports/xls/key/a1e09f776c6e225c1205cb37a9f5fe466fab1b2c>
