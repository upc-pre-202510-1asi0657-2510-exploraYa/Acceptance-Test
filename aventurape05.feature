Feature: Configurar perfil empresarial

  Scenario Outline: Completar y validar el perfil empresarial
    Given que el empresario ha iniciado sesión y accede a la sección "<pantalla>"
    When el empresario <accion>
    Then el sistema <resultado1>
    And <resultado2>

  Examples:
    | pantalla   | accion                                                                      | resultado1                                | resultado2                            |
    | Mi cuenta  | completa los campos como dirección y nombre del local y hace clic en 'Guardar cambios' | actualiza la información del perfil empresarial | -                                     |
    | Mi cuenta  | ingresa una dirección incompleta                                            | resalta los campos con error               | no guarda los cambios hasta que se corrijan los errores |
    | Mi cuenta  | ingresa la dirección del negocio y hace clic en 'Mapa'                     | muestra un mapa con la ubicación ingresada | guarda las coordenadas geográficas junto con la dirección |
