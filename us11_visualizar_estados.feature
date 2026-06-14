Feature: Visualizar estados
  Background:
    Given el usuario abre su inventario

  Scenario Outline: Semaforización correcta de la despensa
    Given el alimento "<producto>" vence en "<dias>"
    Then la interfaz lo muestra con el color "<color>"

    Examples:
      | producto | dias | color   |
      | Manzana  | 10   | Verde   |
      | Queso    | 2    | Naranja |
      | Pan      | -1   | Rojo    |

  Scenario: Alimento que vence el mismo día (Caso límite)
    Given el alimento "Tomate" vence hoy (0 días restantes)
    Then la interfaz lo muestra con el color "Naranja oscuro" o "Rojo" dependiendo de la hora