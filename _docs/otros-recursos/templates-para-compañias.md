---
title: Templates para compañias
permalink: /docs/otros-recursos/templates-para-compañias/
---

**Preguntas posibles:**

Valores

- PARAM:pricelists ¿posee listas de precios particulares para cada tipo de cliente? Por ejemplo Lista Público y Lista Mayorista
- PARAM:seller ¿posee vendedores que visitan los clientes y comisionan un porcentaje del precio final de venta? (Preventistas)
- PARAM:subdist ¿UD posee vendedores que visitan los clientes y su ganancia es la diferencia entre el un precio que UD fije y el el precio final de venta? (Subdistribuidores)
- PARAM:services_type|products_type ¿UD vende productos y/o servicios? (lista con las 3 combinaciones)

**Default**<br>
Entities:<br>
En el caso de que se haya declarado en la creación de la compañía que posee vendedor y/o subdistribuidor se crean entidades del typo seller y/o subdist.

**Posibles entidades:**

Seller

- Nombre: Augusto Martinez (vendedor de ejemplo)

Subdist

- Nombre: Nelson Martin (subdistribuidor de ejemplo)

Client

- Nombre: Juan Perez (cliente de ejemplo)
- Pricelist: (inserted pricelist)

Supplier

- Nombre: Proveedor El Gran

Categorías

- Nombre: Categoría de productos varios

Products

- Nombre: Martillo Thor (producto de ejemplo)
- Costo: 200
- Provider: (inserted provider)
- Categoría: (inserted provider)
- Stock 10
- Solo stock positivo
- Nombre: Casco Iron Man (producto de ejemplo)
- Costo: 150
- Provider: (inserted provider)
- Categoría: (inserted provider)
- Stock 10
- Solo stock positivo

Pricelists

- Público
- 10

Roles

- Administrador (no se puede borrar/editar)
- Contador
- Vendedor
- Cliente (no se puede borrar/editar)

Params (valores por defecto)

- primary_color = indigo
- accent_color = pink
