Feature: US37 - Alertas anticipadas

  Scenario: Configurar días previos
    Given el usuario revisa sus alertas
    When configura que se le avise "3 días antes"
    Then las notificaciones respetan este nuevo margen de tiempo

  Scenario: Margen por defecto
    Given el usuario es nuevo y no ha configurado nada
    When un alimento va a vencer
    Then se le alerta con el valor predeterminado de 24 horas