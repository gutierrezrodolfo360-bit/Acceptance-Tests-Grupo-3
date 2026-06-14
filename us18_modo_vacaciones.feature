Feature: Desactivar notificaciones (Modo Vacaciones)
  Background:
    Given el usuario ingresa a los Ajustes de Cuenta

  Scenario Outline: Suspensión temporal de alertas
    When activa el "Modo Vacaciones" por "<dias>" días
    Then el sistema silencia todas las alertas de vencimiento
    And programa la reactivación automática para la fecha "<fecha_regreso>"

    Examples:
      | dias | fecha_regreso |
      | 7    | Próxima semana|
      | 15   | En 15 días    |

  Scenario: Reactivación manual temprana
    Given el "Modo Vacaciones" está activo
    When el usuario apaga el interruptor antes de que acabe el tiempo
    Then las alertas de vencimiento vuelven a la normalidad instantáneamente