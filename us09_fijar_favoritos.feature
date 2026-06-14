Feature: Fijar alimentos favoritos
  Background:
    Given el usuario visualiza su lista principal de inventario

  Scenario Outline: Anclar elementos de alto consumo
    When presiona el ícono de "Estrella" en el producto "<producto>"
    Then el producto se mueve a la sección superior de la lista
    And mantiene su color de estado "<color_estado>"

    Examples:
      | producto         | color_estado |
      | Huevos           | Verde        |
      | Leche Evaporada  | Naranja      |

  Scenario: Quitar de favoritos
    Given el "Arroz" está fijado en la parte superior
    When presiona la "Estrella" nuevamente para desmarcar
    Then el "Arroz" regresa al ordenamiento normal de la lista por fechas