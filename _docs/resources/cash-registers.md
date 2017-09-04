---
resource: cash_registers
permalink: /docs/resources/cash_registers/
attributes:
  - name: name
  - name: description
  - name: allow_reconciled_balance
    valuetype: true | false
  - name: opening_balance
  - name: reconciled_balance
  - name: actual_balance
  - name: default
relationships:
  - resource: transactions
    hasMany: true
filters: null
---

```javascript
{#777
  +"meta": {#774
    +"total_resources": 1
    +"resources_per_page": 500
    +"page": 1
  }
  +"links": {#723
    +"first": "http://localhost/v1/companies/161/cash_registers?page=1"
    +"last": "http://localhost/v1/companies/161/cash_registers?page=1"
    +"prev": ""
    +"next": ""
  }
  +"data": array:1 [
    0 => {#780
      +"type": "cash_registers"
      +"id": "49"
      +"attributes": {#726
        +"name": "Caja general"
        +"description": ""
        +"allow_reconciled_balance": 1
        +"opening_balance": 0
        +"reconciled_balance": 0
        +"actual_balance": 12014.69
        +"company_id": 161
        +"default": 1
      }
      +"relationships": {#892
        +"transactions": {#888
          +"data": array:5 [
            0 => {#877
              +"type": "transactions"
              +"id": "98"
            }
            1 => {#878
              +"type": "transactions"
              +"id": "53"
            }
            2 => {#876
              +"type": "transactions"
              +"id": "19"
            }
            3 => {#882
              +"type": "transactions"
              +"id": "65"
            }
            4 => {#887
              +"type": "transactions"
              +"id": "20"
            }
          ]
        }
      }
      +"links": {#890
        +"self": "http://localhost/v1/companies/161/cash_registers/49"
      }
    }
  ]
}
```
