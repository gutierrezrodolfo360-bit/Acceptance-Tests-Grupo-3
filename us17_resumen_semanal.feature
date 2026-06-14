Feature: Notificación resumen semanal
  Background:
    Given es domingo a las 10:00 AM y el cronjob de resúmenes se ejecuta

  Scenario Outline: Generación de reporte de fin de semana
    Given el usuario tuvo un desempeño de "<estado_desempeno>" en la semana
    When el sistema dispara la notificación semanal
    Then el mensaje push contiene el texto "<mensaje_reporte>"

    Examples:
      | estado_desempeno | mensaje_reporte                               |
      | Excelente        | ¡Gran semana! Salvaste 5 alimentos.           |
      | Regular          | Resumen: Desperdiciaste 1 alimento esta semana.|

  Scenario: Usuario inactivo durante la semana
    Given el usuario no abrió la aplicación ni registró nada en 7 días
    When el sistema intenta enviar el resumen
    Then envía un recordatorio de re-enganche "Tu despensa te extraña, ¡actualízala!"