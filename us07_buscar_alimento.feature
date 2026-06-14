Feature: Buscar alimento por nombre
  Background:
    Given el usuario utiliza la barra de búsqueda superior

  Scenario: Búsqueda con coincidencias parciales
    When escribe "Que"
    Then el sistema muestra "Queso Fresco" y "Queso Edam" al instante

  Scenario: Búsqueda sin resultados (Estado vacío)
    When escribe "Dragonfruit"
    Then el área de resultados queda limpia
    And muestra la ilustración de estado vacío "Alimento no encontrado"