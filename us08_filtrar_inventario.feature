Feature: Filtrar inventario por categoría
  Background:
    Given el usuario tiene una despensa con 20 alimentos mezclados

  Scenario: Filtrar categoría con resultados
    When selecciona el filtro "Vegetales"
    Then la lista oculta carnes y lácteos
    And solo muestra productos clasificados como vegetales

  Scenario: Filtrar categoría sin resultados
    When selecciona el filtro "Dulces" (la cual está vacía)
    Then la lista principal se vacía
    And muestra "No tienes alimentos en esta categoría"