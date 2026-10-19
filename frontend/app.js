const nombrePokemon = document.getElementById("nombrePokemon");
const btnBuscar = document.getElementById("btnBuscar");
const mensaje = document.getElementById("mensaje");
const nombre = document.getElementById("nombre");
const imagen = document.getElementById("imagen");
const tipos = document.getElementById("tipos");
const peso = document.getElementById("peso");
const altura = document.getElementById("altura");
btnBuscar.addEventListener("click", buscarPokemon);
async function buscarPokemon() {
const busqueda = nombrePokemon.value.trim().toLowerCase();
nombre.textContent = "";
imagen.hidden = true;
imagen.removeAttribute("src");
tipos.textContent = "";
peso.textContent = "";
altura.textContent = "";

if (busqueda === "") {
    mensaje.textContent = "Por favor, escribe el nombre de un Pokémon.";
    return;
}
if (!/^[a-z0-9-]+$/.test(busqueda)) {
    mensaje.textContent = "Usa solo letras, números o guiones, sin espacios.";
    return;
}

mensaje.textContent = "Cargando...";

try {
    const respuesta = await fetch(
        `https://pokeapi.co/api/v2/pokemon/${busqueda}`
    );
    if (!respuesta.ok) {
        throw new Error("No se encontró ese Pokémon.");
    }
    const datos = await respuesta.json();
    nombre.textContent =
        datos.name.charAt(0).toUpperCase() + datos.name.slice(1);
    if (datos.sprites.front_default) {
        imagen.src = datos.sprites.front_default;
        imagen.hidden = false;
    }
    const listaTipos = datos.types
        .map(tipo => tipo.type.name)
        .join(", ");
    tipos.textContent = "Tipos: " + listaTipos;
    peso.textContent = "Peso: " + (datos.weight / 10) + " kg";
    altura.textContent = "Altura: " + (datos.height / 10) + " m";

    mensaje.textContent = "¡Pokémon encontrado!";

} catch (error) {
    mensaje.textContent =
        "No se pudo encontrar el Pokémon. Comprueba el nombre e inténtalo de nuevo.";
}

}
