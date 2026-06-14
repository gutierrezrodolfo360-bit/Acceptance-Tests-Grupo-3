Feature: Filtrar recetas por tiempo
  Background:
    Given el usuario se encuentra explorando sugerencias del Smart-Chef

  Scenario Outline: Búsqueda rápida según disponibilidad de tiempo
    When selecciona el filtro de tiempo "<rango_tiempo>"
    Then la lista de recetas se actualiza
    And solo muestra opciones que toman "<tiempo_maximo>" en prepararse

    Examples:
      | rango_tiempo  | tiempo_maximo |
      | Menos de 15m  | 15 minutos    |
      | Hasta 30m     | 30 minutos    |

  Scenario: Filtro de tiempo sin resultados
    Given el usuario aplica el filtro "Menos de 10m"
    When no existen recetas tan rápidas para sus ingredientes por vencer
    Then el Smart-Chef sugiere la receta más rápida disponible (ej. 15m)
    And muestra "No encontramos nada en 10m, pero esto toma un poco más"