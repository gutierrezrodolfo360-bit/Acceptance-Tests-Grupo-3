Feature: US36 - Configurar notificaciones

  Scenario: Activar/desactivar
    Given el usuario va a ajustes
    When apaga el switch de "Notificaciones Push"
    Then deja de recibir alertas en su pantalla de bloqueo

  Scenario: Selección por tipo
    Given el usuario quiere personalizar
    When desactiva solo las "Recomendaciones"
    Then sigue recibiendo alertas de vencimiento pero no de recetas