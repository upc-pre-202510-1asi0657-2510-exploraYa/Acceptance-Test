Feature: Iniciar sesión de empresario

  Scenario Outline: Validación del inicio de sesión
    Given que el empresario está en la página de inicio de sesión
    When ingresa <credenciales> y hace clic en el botón 'Iniciar Sesión'
    Then el sistema <resultado1>
    And <resultado2>

  Examples:
    | credenciales                   | resultado1                                | resultado2                                        |
    | usuario y contraseña correctos | valida las credenciales                   | redirige al empresario a su sección de inicio     |
    | datos incorrectos              | muestra un mensaje de error "Credenciales inválidas" | permanece en la página de inicio de sesión |
