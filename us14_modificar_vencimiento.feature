Feature: Modificar fecha de vencimiento
  Background:
    Given el usuario seleccionó un alimento ya registrado

  Scenario Outline: Actualización por congelamiento u otros métodos
    When edita la fecha de vencimiento cambiándola a "<nueva_fecha>"
    Then el sistema recalcula los días restantes a "<nuevos_dias>"
    And actualiza el color semántico si es necesario

    Examples:
      | nueva_fecha | nuevos_dias |
      | 2026-12-31  | 180         |
      | 2026-07-15  | 30          |

  Scenario: Cambio de fecha a estado vencido por error
    When cambia la fecha a una del pasado
    And guarda los cambios
    Then el sistema lanza una alerta de confirmación
    And pregunta "¿Estás seguro? Este alimento se marcará como vencido (Rojo)"