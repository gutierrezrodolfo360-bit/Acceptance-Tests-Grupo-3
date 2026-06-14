Feature: Editar perfil de usuario
  Background:
    Given el usuario ingresa a "Mi Perfil"

  Scenario: Actualización de dieta exitosa
    When cambia su dieta a "Vegetariana" y guarda
    Then el perfil se actualiza
    And el Smart-Chef descarta automáticamente recetas con carnes

  Scenario: Intento de cambiar correo con formato inválido
    When ingresa "usuario_sin_arroba.com" en el campo de email
    And presiona "Guardar"
    Then el campo se torna rojo indicando "Formato de correo inválido"