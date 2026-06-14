Feature: US38 - Control de notificaciones

  Scenario: Horario de silencio
    Given el usuario no quiere ser molestado de noche
    When configura horas de descanso
    Then la app pausa las alertas en ese periodo y las envía en la mañana

  Scenario: Agrupación de alertas
    Given 5 alimentos vencen el mismo día
    When la app envía la notificación
    Then envía un solo mensaje agrupado ("5 alimentos expiran hoy") en lugar de 5 alertas separadas