Bienvenido a este curso interactivo de Solidity para principiantes.

En esta primera sección veremos un ejemplo de un contrato,  presentaremos un breve sumario de los conceptos incluidos en este curso y mostraremos cómo interactuar con este contrato en el IDE Remix.

Este contrato es un contrato contable que tiene la función de aumentar, disminuir y devolver el estado de una variable de conteo, `count`.

Si miramos en la parte superior del contrato, podemos ver información sobre el contrato, como la licencia (línea 1) y la versión de Solidity (línea 2), así como el *keyword* `contract` y su nombre,` Counter` (línea 4). Cubriremos estos conceptos en la siguiente sección sobre la **Sintaxis básica**.

Con `uint public count` (línea 5) declaramos una *state variable* del tipo` uint` y que es visible públicamente. Cubriremos estos conceptos en nuestras secciones sobre **Variables**, **Tipos de datos primitivos** y **Visibilidad**.

Luego creamos una función `get` (línea 8) que se define con el keyword `view` y devuelve un tipo uint. Específicamente, devuelve la variable "count". Hay dos funciones más en este contrato, una función `inc` (línea 13) y` dec` (línea 18) que aumentan o disminuyen nuestra variable de conteo.
Hablaremos de estos conceptos en nuestras secciones sobre **Funciones**, **Funciones view y pure** y **Lectura y escritura en una state variable**.

## Interactuando con el IDE
En este GIF te mostramos cómo puedes interactuar con tu contrato en el IDE para probar su funcionamiento.

1. Compilamos el contrato.
2. Implantamos el contrato en la VM JavaScript en nuestro navegador.
3. Interactuamos con el contrato y probamos sus funciones `get`,` inc` y `dec`.

<a href="https://i.imgur.com/6W4AHMZ.gif" target="_blank"> Ver interacción de contrato </a>

## ⭐️ Asignación
A lo largo de este curso, le asignaremos tareas para probar y consolidar sus conocimientos recién adquiridos.

Tu primera tarea es:
* Compilar este contrato
* Implantarlo en la VM JavaScript
* Interactuar con su contrato