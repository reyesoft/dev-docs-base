---
title: "Colores"
---

## Ventas y Compras

La paleta de colores utilizada para la app web es la proporcionada por Material Design, sin embargo, en el sistema podemos destacar dos secciones a tener en cuenta, como son ventas y compras.

* **Para ventas:** todas las vista que engloba deberán verse con tintes verdes **green-500**{: .mdl-color-text--green-500} ( #4CAF50)

* **Para compras:** todas las vista que engloba deberán verse con tintes rojos **red-500**{: .mdl-color-text--red-500} ( #F44336)

* **Para punto de venta (facturas):** la vista deberá verse con tintes rojos **green-500**{: .mdl-color-text--green-500} ( #4CAF50)

* **Para punto de venta (nota de crédito):** la vista deberá verse con tintes azules **indigo-500**{: .mdl-color-text--indigo-500} ( #3F51B5)

## Botones

En cuanto a los botones, se deben cumplir diferentes reglas, esto siempre dependiendo de lo que se está intentando trasmitir en las acciones que finalmente ejecutarán dichos botones.

### Links, MatButton

Los **mat-button** son botones que carecen de un fondo sólido, por lo cual, para proporcionar mayor legibilidad a los usuarios, lo utilizamos en conjunto con **color="accent"** ya que este se caracteriza de ser un color que contrasta con los fondos.

#### Html

```html
<button mat-button color="accent" click="action">action</button>

<!-- Botones de tipo link... -->
<a href="#" mat-button color="accent">action</a>
```

Otra forma de usarlo es con su clase correspondiente:

#### Html

```html
<button mat-button class="mat-accent">action</button>

<!-- Botones de tipo link... -->
<a href="#" mat-button class="mat-accent">action</a>
```

En cuanto a los links simples que no llevan alguna **directive** relacionada a **mat-button** el comportamiento será el siguiente.

#### Html

```html
<a href="#">action</a>
```

#### Sass

```scss
a {
    @extends mat-accent !optional;
    color: currentColor;
}
```

### MatRaisedButton y MatFlatButton

Los **mat-flat-button** son botones de fondo sólido, se usan cuando están acompañado de otro botón *(por ejemplo de cancelar)*, y que son usados para destacar por encima de los demás, por lo general estos botones hacen referencia a una acción de confirmación importante *(como por ejemplo guardar)*.

Siempre deben usar **color="primary"**

#### Html

```html
<button mat-flat-button color="primary">action</button>

<button mat-raised-button color="primary">action</button>

<!-- Botones de tipo link... -->
<a mat-flat-button color="primary">action</a>

<a mat-raised-button color="primary">action</a>
```

Otra forma de usarlo es con su clase correspondiente:

#### Html

```html
<button mat-flat-button class="mat-primary">action</button>

<button mat-raised-button class="mat-primary">action</button>

<!-- Botones de tipo link... -->
<a mat-flat-button class="mat-primary">action</a>

<a mat-raised-button class="mat-primary">action</a>
```

### MatStrokedButton

Los **mat-stroked-button** son botones sin fondo sólido y con **border** *(de igual color que su texto)*.

Siempre deben usar **color="accent"**

#### Html

```html
<button mat-stroked-button color="accent">action</button>

<!-- Botones de tipo link... -->
<a mat-stroked-button color="accent">action</a>
```

Otra forma de usarlo es con su clase correspondiente:

#### Html

```html
<button mat-stroked-button class="mat-accent">action</button>

<!-- Botones de tipo link... -->
<a mat-stroked-button class="mat-accent">action</a>
```

### MatFabButton

Los **mat-fab-button** son el único caso de botones con fondo sólido que usan **color="accent"**. Esta condición en cuanto al color se debe a que los **mat-fab-button** son botones que pueden ser usado por encima de contenedores de fondo sólido, al usar **accent** nos asegura que estos 2 elementos van contrastar y ser fácilmente distinguible por el usuario.

Siempre deben usar **color="accent"**

#### Html

```html
<button mat-fab-button color="accent">action</button>

<!-- Botones de tipo link... -->
<a mat-fab-button color="accent">action</a>
```

Otra forma de usarlo es con su clase correspondiente:

#### Html

```html
<button mat-fab-button class="mat-accent">action</button>

<!-- Botones de tipo link... -->
<a mat-fab-button class="mat-accent">action</a>
```

### MatRadioButton, MatCheckbox, MatFormField, MatSlideToggle *(y elementos outline)*

Todos estos elementos que son accionables, deben llevar **color="accent"**

Todo lo mencionado anteriormente no incluye los MatButtonIcon, estos permanecen neutrales, es decir, no usaran como color base ni **primary** ni **accent**