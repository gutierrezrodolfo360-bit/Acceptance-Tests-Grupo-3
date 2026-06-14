Feature: Escanear código de barras
  Background:
    Given el usuario abre la funcionalidad de escáner en FoodCare

  Scenario Outline: Escaneo de producto reconocido
    When la cámara lee el código "<codigo>"
    Then la API autocompleta el nombre "<nombre_esperado>"
    And asigna la categoría "<categoria_esperada>"

    Examples:
      | codigo        | nombre_esperado | categoria_esperada |
      | 7751234567890 | Leche Evaporada | Lácteos            |
      | 7750987654321 | Atún en lata    | Conservas          |

  Scenario: Escaneo de producto no reconocido
    When escanea un código que no existe en la base de datos
    Then muestra el mensaje "Producto no encontrado"
    And habilita el formulario manual para ingreso de datos