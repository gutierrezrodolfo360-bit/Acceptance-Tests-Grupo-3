Feature: Recibir recomendaciones
  Background:
    Given el usuario navega a la sección "Smart-Chef"

  Scenario Outline: Sugerencias basadas en ingredientes críticos
    Given el inventario detecta "<ingredientes>" en estado "Por vencer"
    When el motor analiza opciones
    Then sugiere la receta "<receta>" para salvar "<cantidad>" ingredientes

    Examples:
      | ingredientes     | receta                | cantidad |
      | Espinaca, Huevos | Omelette Verde        | 2        |
      | Tomate, Queso    | Ensalada Caprese      | 2        |

  Scenario: Despensa sin alimentos críticos
    Given todos los alimentos del inventario están frescos
    When el motor realiza la búsqueda
    Then muestra recetas variadas basadas en gustos generales
    And muestra el mensaje "No tienes alimentos por vencer hoy"