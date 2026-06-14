Feature: Registrar cantidad de alimento
  Background:
    Given el usuario está agregando un producto a la despensa

  Scenario Outline: Selección de unidades de medida
    When ingresa la cantidad "<numero>" y la unidad "<medida>"
    Then el sistema guarda el volumen exacto
    And muestra el producto en el inventario como "<resultado_visual>"

    Examples:
      | numero | medida | resultado_visual |
      | 2      | Litros | 2 Litros         |
      | 500    | Gramos | 500 Gramos       |

  Scenario: Guardar sin especificar cantidad
    When el usuario deja el campo de cantidad vacío
    And presiona "Guardar"
    Then el sistema asume por defecto "1 Unidad"
    And guarda el registro exitosamente sin mostrar error