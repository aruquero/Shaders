# Escena camara e iluminacion versión con shaders

![N|Solid](https://i.gyazo.com/c224d3d8dabf6257b3f99b6dbc8c2cbb.png)

# Indice

  - Introducción
  - La aplicación
  - Decisiones de diseño
  - Tutorial
  - Notas del autor
  - Gif sobre el funcionamiento

# Informe

**Introducción**:

En esta novena entrega hemos realizado una modificación sobre el proyecto "escena-iluminación" y le hemos añadido una variante con los shaders.

**La aplicación**:

Seguimos manteniendo el mismo concepto de aplicación:
Nuestra aplicación se fundamenta en una escena compuesta por tres modelos 3d u objetos, los cuales son:

    -Una silla
  
    -Un escritorio
  
    -Una lámpara de escritorio
  
Dichos elementos están colocados de una forma orgánica simulando una habitación. Esta habitación se situa como eje central de nuestra cámara, esto implica que somos capaces de girar y "orbitar" al rededor de esta, pero nunca podemos dejarla de ver. Así mismo tenemos un foco de iluminación en nuestro ratón, es decir, allí donde esté apuntando nuestro puntero generará un foco de luz. Por último, tenemos una iluminación ambiental para darle profundidad a la escena.

![N|Solid](https://i.gyazo.com/7476228273e00ff13c9a1edb15267a58.png)

**Decisiones de diseño**:

Se ha decidido trabajar en base a este proyecto debido al carácter que tenía el mismo. El anterior proyecto es uno donde se juega con la iluminación en una escena compuesta por diferentes objetos, en este caso pasamos a los shaders pudiendo ver el contraste entre ambos.
Además, la escena ayuda a resaltar más el juego que puede dar esta herramienta.

![N|Solid](https://i.gyazo.com/2a657512c409c0cf7870a8fe749f6930.png)

**Tutorial**

Este apartado de tutorial se divide en tres partes, la cámara, shaders y la iluminación.

Iluminación:

    -Se generará un foco de luz en relación a la posición del puntero del ratón en los objetos.
    -Existe una luz ambiental para la escena en general.
  
Cámara:

    -Al mantener el "click-izquierdo" somos capaces de rotar la cámara por nuestra escena.
 
Shaders:
    
    -Para cambiar a la vista de los shaders es necesario pulsar la tecla "espacio"
  
**Notas del autor**

A lo largo del desarrollo de la aplicación hemos sufrido diversos problemas al mantener una sesión prolongada de la mismas, estos problemas eran de carga con el disco duro. No sabemos si es un problema directo de la aplicación o algo particular e aislado. No obstante, nos vemos en la responsabilidad de comentar dicha información.

Sentimos las molestias.

**Gif sobre el funcionamiento**


![Alt Text](https://i.gyazo.com/e1c85024c81267ead8bd09bb875640cd.gif)
