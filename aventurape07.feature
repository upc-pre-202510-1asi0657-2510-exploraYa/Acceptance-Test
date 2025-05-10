Feature: Configurar perfil del aventurero

  Scenario Outline: Completar y validar el perfil del aventurero
    Given que el aventurero ha iniciado sesión y accede a la sección "<pantalla>"
    When el aventurero <accion>
    Then el sistema <resultado1>
    And <resultado2>

  Examples:
    | pantalla   | accion                                                             | resultado1                         | resultado2                            |
    | Mi cuenta  | completa los campos como dirección y género y hace clic en 'Guardar cambios' | actualiza la información del perfil | -                                     |
    | Mi cuenta  | ingresa información en formato incorrecto                          | resalta los campos con error        | no guarda los cambios hasta que se corrijan los errores |
