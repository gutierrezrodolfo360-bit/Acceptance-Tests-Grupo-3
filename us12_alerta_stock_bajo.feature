Feature: Alerta de stock bajo
  Background:
    Given el usuario marcó el "Arroz" como artículo esencial/básico

  Scenario: Generación de alerta de recompra
    When el inventario de "Arroz" llega a 0
    Then el sistema muestra un badge "Stock bajo"
    And sugiere un botón para "Añadir a lista de compras"

  Scenario: Ignorar alerta temporalmente
    Given la alerta de stock bajo está visible
    When el usuario desliza o cierra la alerta
    Then no vuelve a mostrarse hasta el próximo ciclo de inicio de sesión