Feature: Eliminar alimento consumido
  Background:
    Given el usuario visualiza su lista de alimentos

  Scenario: Marcado exitoso de consumo
    When desliza "Pan" y selecciona "Consumido"
    Then el "Pan" se elimina del inventario activo
    And se registra positivamente en el historial de ahorro

  Scenario: Deshacer acción de consumo por error
    When marca "Pan" como "Consumido"
    And presiona inmediatamente "Deshacer" en el mensaje emergente (Snackbar)
    Then el "Pan" regresa al inventario con su estado original