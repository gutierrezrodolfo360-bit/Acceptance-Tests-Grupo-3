Feature: Registrar alimento
  Background:
    Given el usuario ha iniciado sesión correctamente
    And se encuentra en la pantalla "Agregar Alimento"

  Scenario: Registro exitoso con todos los datos
    When ingresa el nombre "Manzana" y fecha de vencimiento "2026-06-30"
    And presiona "Guardar"
    Then el sistema registra el alimento exitosamente
    And redirige al inventario mostrando "Manzana"

  Scenario: Intento de registro con fecha en el pasado
    When ingresa el nombre "Leche" y una fecha pasada "2025-01-01"
    And presiona "Guardar"
    Then el sistema bloquea el registro
    And muestra el error "La fecha de vencimiento no puede ser anterior a hoy"

  Scenario: Intento de registro con campos vacíos
    When deja el campo de nombre vacío
    And presiona "Guardar"
    Then el sistema resalta el campo en rojo
    And muestra la advertencia "El nombre del producto es obligatorio"