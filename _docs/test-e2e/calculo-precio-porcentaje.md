---
title: Cálculo precios en base al procentaje
permalink: /docs/test-e2e/calculo-precio-porcentaje/
section: Test-E2E
---

**Tax**

- Responsable inscripto 21%

**Dos listas de precios**<br>

Mayorista (1)

- percent_price 50%
- percent_subdist 40%
- percent_prevent 2%

Distribuidor (2)

- percent_price 25%
- percent_subdist 22%
- percent_prevent 1%

**Productos**<br>
Camara VFIR (1)

- CostWT 130
- Lista 1

  - price 0 --> 314.6 { $costwt / (1-($percent_price/100)) }
  - percent_subdist 0 --> 262.17
  - percent_prevent 0 --> 308.31 { $price_ (1 - ($percent_price/100)) } { $price_ (($percent_price/100)+1) }

- Lista 2

  - price 0 --> 209.73
  - percent_subdist 0 --> 201.67
  - percent_prevent 0 --> 207.63

- Camara VFIR DOMO (2)

  - CostWT 130
  - Lista 1

    - price 250 --> 250
    - percent_subdist -35 --> 242
    - percent_prevent -5 --> 237.5

  - Lista 2

    - price 200 --> 200
    - percent_subdist 190 --> 190
    - percent_prevent 5 --> 195 (solo en caso de preventa >0 resta con price)

- Camara IP (3)

  - CostWT 100
  - Lista 1

    - price -20 --> 151.25
    - percent_subdist -10 --> 134.44
    - percent_prevent -7 --> 140.66

  - Lista 2

    - price -10 --> 134.44
    - percent_subdist -5 --> 127.37
    - percent_prevent -3.5 --> 129.73
