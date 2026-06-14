Feature: US40 - Notificaciones relevantes

  Scenario: Alertas inteligentes
    Given el usuario nunca consume lácteos de noche
    When el sistema sugiere un consumo
    Then manda la alerta en el horario donde es más probable que cocine

  Scenario: Evitar spam
    Given la app tiene promociones
    When el usuario marca que solo quiere alertas de inventario
    Then el sistema bloquea notificaciones no esenciales