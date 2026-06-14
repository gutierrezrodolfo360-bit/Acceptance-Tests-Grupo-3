Feature: Cambiar idioma de la app
  Background:
    Given el usuario entra al menú de "Idioma"

  Scenario Outline: Cambio de textos dinámicos
    When selecciona el idioma "<nuevo_idioma>"
    Then la aplicación refresca sus variables de localización
    And el título del dashboard cambia a "<titulo_traducido>"

    Examples:
      | nuevo_idioma | titulo_traducido |
      | Inglés       | My Pantry        |
      | Portugués    | Minha Despensa   |

  Scenario: Idioma no soportado por el dispositivo
    Given el sistema operativo del usuario está en Ruso
    When FoodCare no tiene traducción al Ruso
    Then la aplicación aplica el idioma de respaldo (Español o Inglés)