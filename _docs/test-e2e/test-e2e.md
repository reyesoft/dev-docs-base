---
title: Test e2e
permalink: /docs/test-e2e/test-e2e/
section: Test-E2E
---

Creo user1<br>
Activo user1 con link generado para el correo<br>
Loguin user1<br>
Creo company1 con user1

- Subdists = 1
- Sellers = 1 Creo pricelist1
- percent_price 50%
- percent_subdist 40%
- percent_prevent 2% Creo pricelist2
- percent_price 25%
- percent_subdist 22%
- percent_prevent 1% Creo product1
- stock: 0
- stock_type: onlypositive
- tax: 21
- cost: 130 ARS
- pricelist1

  - price 0 [314.6]
  - price_type auto
  - percent_subdist 0 [262.17]
  - percent_subdist_type auto
  - percent_prevent 0 [308.31]
  - percent_prevent_type auto

- pricelist2

  - price 400 [400]
  - price_type amount
  - percent_subdist 350 [350]
  - percent_subdist_type amount
  - percent_prevent 5 [195]
  - percent_prevent_type percent Creo product2

- stock: 0

- stock_type: onlypositive

- tax: 10.5
- cost: 90 USD
- pricelist1

  - price 50 [ ]
  - price_type percent
  - percent_subdist 10 [ ]
  - percent_subdist_type percent
  - percent_prevent 2 [ ]
  - percent_prevent_type percent

- pricelist2

  - price 4000 [400]
  - price_type amount
  - percent_subdist 3900 [3900]
  - percent_subdist_type amount
  - percent_prevent 5 [ ]
  - percent_prevent_type percent

- Creo entity_supplier1

  - type: supplier

- Creo entity_subist1

  - type: subdist

- Creo entity_seller1

  - type: seller

- Creo entity_client1

  - type: client
  - pricelist: pricelist1

- Creo entity_client2

  - type: client
  - pricelist: pricelist1
  - seller: entity_subdist1

- Creo entity_client3

  - type: client
  - pricelist: pricelist2
  - seller: entity_seller1

- Creo order1

  - type: buy **
