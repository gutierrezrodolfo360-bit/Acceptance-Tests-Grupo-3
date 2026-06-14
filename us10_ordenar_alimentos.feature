Feature: Ordenar alimentos
  Background:
    Given el usuario está en la vista del inventario

  Scenario: Ordenamiento por fecha más próxima (Defecto)
    When aplica el filtro "Ordenar por Vencimiento"
    Then los alimentos en rojo y naranja aparecen arriba
    And los alimentos en verde aparecen abajo

  Scenario: Ordenamiento alfabético
    When aplica el filtro "Alfabético (A-Z)"
    Then la lista se reorganiza ignorando las fechas de vencimiento
    And "Arroz" aparece antes que "Zanahoria"