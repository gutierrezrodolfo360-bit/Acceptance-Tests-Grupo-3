Feature: Categorizar alimentos
  Background:
    Given el usuario está editando un alimento existente

  Scenario Outline: Asignación masiva o individual de categorías
    When selecciona el producto "<producto>" y le asigna "<categoria>"
    Then el inventario lo mueve al contenedor "<categoria>"
    And el conteo de esa sección aumenta en 1

    Examples:
      | producto | categoria |
      | Queso    | Lácteos   |
      | Brócoli  | Vegetales |

  Scenario: Remoción de categoría
    Given el "Queso" pertenece a "Lácteos"
    When el usuario selecciona "Ninguna categoría"
    Then el alimento regresa a la lista general "Sin Clasificar"