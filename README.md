# Pokémon API - Micro Paquete

Este micro paquete incluye modelos de datos y servicios para manejar las llamadas a la API, como obtener listas de Pokémon y buscar información detallada de un Pokémon.

---

## Características

- **Modelos**: Incluye modelos como `Pokemon`, `Ability`, `Type`, `Stat`, entre otros.
- **Gestión de API**: Maneja llamadas a la API de Pokémon usando `dio`.
- **Modularidad**: Diseñado para ser independiente y reutilizable en otros proyectos.

---

## Instalación

1. **Clonar el Micro Paquete**

   Clona el repositorio que contiene este micro paquete:

   ```bash
   git clone https://github.com/steven230500/pokemon_api.git
   cd pokemon_api
   ```

2. **Instalar Dependencias**

   Ejecuta el siguiente comando para instalar las dependencias necesarias:

   ```bash
   flutter pub get
   ```

3. **Uso en el proyecto principal**

   Para utilizar este micro paquete en el proyecto principal, agrégalo como una dependencia local en el archivo `pubspec.yaml` del proyecto principal:

   ```yaml
   dependencies:
     pokemon_api:
       path: ../pokemon_api
   ```

---
