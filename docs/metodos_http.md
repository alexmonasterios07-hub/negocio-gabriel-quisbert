# Métodos HTTP
## Introducción
Los métodos HTTP permiten realizar diferentes operaciones sobre los recursos de un servidor. Para esta práctica se utiliza la API de prueba JSONPlaceholder, que permite simular peticiones HTTP.
URL base: https://jsonplaceholder.typicode.com/posts
## 1. GET
**Descripción:** permite consultar información de un recurso.
**Ejemplo:** consultar la publicación con el ID 1.
* Método: GET
* URL: `https://jsonplaceholder.typicode.com/posts/1`
* Cuerpo de la petición: no requiere.
* Código de respuesta esperado: `200 OK`.
**Uso práctico:** obtener los datos de una publicación existente.

## 2. POST
**Descripción:** permite enviar información para crear un nuevo recurso.
**Ejemplo:** crear una publicación.
* Método: POST
* URL: `https://jsonplaceholder.typicode.com/posts`
* Cuerpo de la petición:
json
{
  "title": "Mi primera publicacion",
  "body": "Contenido de prueba",
  "userId": 1
}
* Código de respuesta esperado: `201 Created`.
**Uso práctico:** enviar los datos de una nueva publicación al servidor.
Nota: JSONPlaceholder simula la creación y devuelve una respuesta, pero no guarda permanentemente el nuevo recurso.

## 3. PUT
**Descripción:** permite reemplazar los datos de un recurso existente.
**Ejemplo:** reemplazar los datos de la publicación con ID 1.
* Método: PUT
* URL: `https://jsonplaceholder.typicode.com/posts/1`
* Cuerpo de la petición:
json
{
  "id": 1,
  "title": "Publicacion actualizada",
  "body": "Contenido reemplazado",
  "userId": 1
}
* Código de respuesta esperado: `200 OK`.
**Uso práctico:** enviar una representación completa del recurso que se desea actualizar.

## 4. PATCH
**Descripción:** permite modificar solamente una parte de un recurso existente.
**Ejemplo:** cambiar únicamente el título de la publicación con ID 1.
* Método: PATCH
* URL: `https://jsonplaceholder.typicode.com/posts/1`
* Cuerpo de la petición:
json
{
  "title": "Nuevo titulo"
}
* Código de respuesta esperado: `200 OK`.
**Uso práctico:** actualizar un campo sin enviar todos los datos del recurso.
### Diferencia entre PUT y PATCH
PUT se utiliza para reemplazar la representación completa del recurso, mientras que PATCH permite enviar únicamente los campos que se desean modificar. 

## 5. DELETE
**Descripción:** permite solicitar la eliminación de un recurso.
**Ejemplo:** eliminar la publicación con ID 1.
* Método: DELETE
* URL: `https://jsonplaceholder.typicode.com/posts/1`
* Cuerpo de la petición: normalmente no requiere.
* Código de respuesta esperado: `200 OK` en la respuesta simulada de JSONPlaceholder.
**Uso práctico:** solicitar la eliminación de un recurso.
Nota: JSONPlaceholder simula la eliminación; los cambios no se guardan permanentemente.

## Conclusión
Los métodos HTTP permiten consultar, crear, reemplazar, modificar parcialmente y eliminar recursos. Elegir el método adecuado ayuda a comunicar correctamente la operación que se desea realizar en una API.
