Feature: Registrar precio de alimento
  Background:
    Given el usuario se encuentra registrando o editando un alimento

  Scenario Outline: Guardado del precio unitario
    When ingresa el precio "<monto>" en la moneda local
    And presiona "Guardar"
    Then el sistema asocia el valor económico al alimento
    And el dashboard lo contabiliza en el resumen de "<estado>"

    Examples:
      | monto | estado             |
      | 5.50  | Inversión actual   |
      | 12.00 | Inversión actual   |

  Scenario: Intento de ingreso de precio negativo o inválido
    When ingresa el valor "-5.00" o texto alfabético
    And presiona "Guardar"
    Then el sistema bloquea el campo numérico
    And muestra el mensaje "El precio debe ser un número mayor a 0"