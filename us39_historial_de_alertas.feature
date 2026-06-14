Feature: US39 - Historial de alertas

  Scenario: Consultar pasadas
    Given el usuario borró una alerta por accidente
    When entra al historial
    Then puede ver el registro de todas las alertas recibidas en la semana

  Scenario: Limpiar historial
    Given el buzón está lleno
    When el usuario presiona "Vaciar historial"
    Then se eliminan todos los registros de alertas pasadas