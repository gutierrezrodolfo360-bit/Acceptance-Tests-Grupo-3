Feature: Alertas de vencimiento
  Background:
    Given el proceso de validación diaria se ejecuta a las 08:00 AM

  Scenario Outline: Notificación según proximidad de vencimiento
    Given el usuario tiene "<alimento>" que vence en "<dias>" días
    When el sistema valida los estados del inventario
    Then se envía una alerta indicando "<mensaje>"

    Examples:
      | alimento | dias | mensaje                           |
      | Pollo    | 2    | Tu Pollo vence en 2 días.         |
      | Yogurt   | 1    | ¡Atención! Tu Yogurt vence mañana.|

  Scenario: Usuario con notificaciones deshabilitadas
    Given el usuario apagó las alertas desde su sistema operativo
    When el sistema detecta un alimento por vencer
    Then no intenta enviar la notificación push
    And solo actualiza el color visual dentro de la aplicación