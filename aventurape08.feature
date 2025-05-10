Feature: Publicar una nueva actividad

  Scenario Outline: Publicación de actividades por el empresario
    Given que el empresario ha iniciado sesión y está en la sección "<pantalla>"
    When el empresario <accion>
    Then el sistema <resultado1>
    And <resultado2>

  Examples:
    | pantalla   | accion                                                                        | resultado1                               | resultado2                              |
    | Inicio     | navega a la opción 'Agregar Actividad', completa todos los campos requeridos y hace clic en 'Publicar' | guarda la nueva actividad                | la actividad se vuelve visible en la plataforma para los aventureros |
    | Formulario | intenta publicar sin completar todos los campos obligatorios                 | indica los campos faltantes              | no permite la publicación hasta que estén completos |
