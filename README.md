# Escena camara e iluminacion

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

En esta quinta entrega hemos tenido la oportunidad de afrontar un proyecto abierto, centrado en la iluminación de una escena o composición, y al mismo tiempo el poder brindar al usuario unos controles de cámara para visualizar dicha escena.

**La aplicación**:

Nuestra aplicación se fundamenta en una escena compuesta por tres modelos 3d u objetos, los cuales son:

    -Una silla
  
    -Un escritorio
  
    -Una lámpara de escritorio
  
Dichos elementos están colocados de una forma orgánica simulando una habitación. Esta habitación se situa como eje central de nuestra cámara, esto implica que somos capaces de girar y "orbitar" al rededor de esta, pero nunca podemos dejarla de ver. Así mismo tenemos un foco de iluminación en nuestro ratón, es decir, allí donde esté apuntando nuestro puntero generará un foco de luz. Por último, tenemos una iluminación ambiental para darle profundidad a la escena.

![N|Solid](https://i.gyazo.com/7476228273e00ff13c9a1edb15267a58.png)

**Decisiones de diseño**:

Se ha decidido mantener nuestra composición de objetos como eje central de la escena para así imposibilitar mareos o "perdidas de cámara", es decir, con esto logramos atraer completamente la atracción del usuario en nuestra escena. Por otra parte, se ha decidido no poner una base inferior o lateral a modo de suelo y parades para dar más libertad al usuario en cuanto a cámara se refiere.

![N|Solid](https://i.gyazo.com/2a657512c409c0cf7870a8fe749f6930.png)

**Tutorial**

Este apartado de tutorial se divide en dos partes, la cámara y la iluminación.

Iluminación:

    -Se generará un foco de luz en relación a la posición del puntero del ratón en los objetos.
    -Existe una luz ambiental para la escena en general.
  
Cámara:

    -Al mantener el "click-izquierdo" somos capaces de rotar la cámara por nuestra escena.
  
**Notas del autor**

A lo largo del desarrollo de la aplicación hemos sufrido diversos problemas al mantener una sesión prolongada de la mismas, estos problemas eran de carga con el disco duro. No sabemos si es un problema directo de la aplicación o algo particular e aislado. No obstante, nos vemos en la responsabilidad de comentar dicha información.

Sentimos las molestias.

**Gif sobre el funcionamiento**


![Alt Text](https://i.gyazo.com/e1c85024c81267ead8bd09bb875640cd.gif)
