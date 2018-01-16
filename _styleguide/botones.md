---
title:  "Botones y links"
---
### Botones y links

De forma general para los botones existen dos formas de aplicarlos dentro del sistema, como botones de acciones interna, y como botones tipo links.

**Botones de acciones internas:** será todo boton que tenga alguna funcionalidad interna a la vista en la que se encuentra, por ejemplo un guardar, eliminar, filtrar, etc.

![Buttons>]({{ '/img/styleguide/botones.jpg' | prepend: site.baseurl }})

**Botones de tipo link:** sera todo boton que tenga por objetivo dirigir al usuario a una vista nueva. Esto facilitará al usuario abrir múltiples pestañas en el navegador con dicha vista.

![Buttons2>]({{ '/img/styleguide/btnmenu.jpg' | prepend: site.baseurl }})

**Botones confirmar y cancelar:** estos botones deben ir en conjunto en toda vista de edición/configuración, los botones por defectos que se usarán serán, guardar y cancelar, dando mayor relevancia al botón con la acción de confirmación, en este caso guardar.

Para esto es importante utilizar para el botón de confirmación **class=”md-raised md-primary”**{: .mdl-color-text--red-500}.

Por el contrario el botón cancelar pasará a un segundo plano utilizando **class=”md-accent”**{: .mdl-color-text--red-500}.

![Buttons3>]({{ '/img/styleguide/guardar.jpg' | prepend: site.baseurl }})

El “label” del botón puede variar si así lo requiere una funcionalidad específica por ejemplo puede tener como “label” **ENVIAR**.

En este caso para enviar una invitación a otro usuario, no sería apropiado que el “label” del botón sea guardar.

![Buttons4>]({{ '/img/styleguide/enviar.png' | prepend: site.baseurl }})

**Botones de acciones en línea:** su orden estará determinado por la frecuencia de uso que se estima que le dará el usuario. De esta manera se prevendrá que el usuario haga el menor recorrido posible para alcanzar dichos botones.
Por ejemplo el botón editar, dentro del sistema es un botón que los usuarios usarán con mucha frecuencia frente al botón de inventario. Por este motivo en todas las vistas en las que sea posible editar un ítem en particular este estará por delante de los demás botones.

![Buttons5]({{ '/img/styleguide/smallmenu.jpg' | prepend: site.baseurl }})

Aunque como se muestra en la siguiente captura el botón generar factura incluso es más importante que el botón editar.

![Buttons6]({{ '/img/styleguide/genInvoice.png' | prepend: site.baseurl }})

También en este tipo de botones en línea deben llevar **{ margin: 0 }**{: .mdl-color-text--red-500} para esto se debe usar **class=”reset-margin”**{: .mdl-color-text--red-500}.

**Botón más:** El botón de los tres puntos verticales, deber ir al final del conjunto de botones siempre, y dentro debe llevar las funciones menos utilizadas, **o que protejan al usuario de caer en la tentación de usarlas indiscriminadamente, como por ejemplo el eliminar, en una vista cuyos ítems sean muy importantes como para ser eliminados pero de igual forma se le da la libertad al usuario de hacerlo.**{: .mdl-color-text--grey-500}

![Buttons7]({{ '/img/styleguide/menu1.jpg' | prepend: site.baseurl }})

**Mouseover y Mouseover_child:** Lugares donde se está utilizado este estilo en todas las tablas del sistema funciona de la siguiente manera, se pone la clase **Mouseover** en el padre de una lista, y en los hijos se pone la clase **Mouseover_child**, de esta manera cuando se pase el mouse por arriba de las lista se muestran los elementos ocultos.

![Buttons8]({{ '/img/styleguide/menu2.jpg' | prepend: site.baseurl }})
