Feature: Configurar unidad de medida
  Background:
    Given el usuario accede a Preferencias Regionales

  Scenario Outline: Cambio de sistema de medición
    When cambia el sistema de volumen a "<sistema_medida>"
    Then la interfaz de registro de alimentos actualiza sus etiquetas a "<etiquetas>"
    And recalcula los valores mostrados en la lista

    Examples:
      | sistema_medida | etiquetas |
      | Métrico        | kg, gr, ml|
      | Imperial       | lb, oz, fl|

  Scenario: Guardado de preferencias sin conexión
    When cambia de "Métrico" a "Imperial" estando sin internet
    Then la app guarda el cambio de manera local
    And sincroniza la preferencia en la nube al recuperar conexión