# Documentación de la aplicación Pokémon
## 1. Descripción
Esta aplicación web permite buscar Pokémon por su nombre y mostrar información obtenida de la API pública PokeAPI.

## 2. Tecnologías utilizadas
* **HTML5:** estructura de la página web.
* **JavaScript:** lógica de búsqueda y presentación de los resultados.
* **Fetch API:** permite realizar peticiones a la API.
* **PokeAPI:** proporciona la información de los Pokémon.

## 3. Funcionamiento de la aplicación
El usuario escribe el nombre de un Pokémon en el campo de búsqueda y presiona el botón "Buscar".
La aplicación realiza una petición a la siguiente dirección:
`https://pokeapi.co/api/v2/pokemon/{nombre}`
En `{nombre}` se coloca el nombre del Pokémon que se desea buscar.
Si la búsqueda es exitosa, se muestran los siguientes datos:
* Nombre del Pokémon.
* Imagen.
* Tipos.
* Peso en kilogramos.
* Altura en metros.

## 4. Manejo de peticiones y errores
Para consultar la API se utiliza `async/await`, lo que permite esperar la respuesta antes de procesar los datos.
También se utiliza `try/catch` para manejar posibles errores y `response.ok` para comprobar si la petición fue exitosa.
Mientras se realiza la búsqueda, aparece el mensaje "Cargando...".
Si el usuario no escribe ningún nombre o el Pokémon no existe, se muestra un mensaje indicando el problema.

## 5. Conversión de unidades
La API proporciona el peso en hectogramos y la altura en decímetros. Para mostrar los resultados en kilogramos y metros, se divide cada valor entre 10.

* Peso: `datos.weight / 10`
* Altura: `datos.height / 10`

## 6. Capturas de pantalla
Se incluyen dos capturas de pantalla para demostrar el funcionamiento de la aplicación:


## 7. Conclusión
La práctica permite aplicar HTML, JavaScript y Fetch API para consumir un servicio web externo. También se practican el manejo de errores, el uso de funciones asíncronas y la presentación de datos obtenidos de una API.
