Feature: Publicar reseña sobre una actividad

  Scenario Outline: Interacciones del aventurero con reseñas
    Given que el aventurero está en la sección de "<pantalla>"
    When el aventurero <accion>
    Then el sistema <resultado1>
    And <resultado2>

  Examples:
    | pantalla              | accion                                                      | resultado1                        | resultado2                                      |
    | Buscar                | selecciona una actividad específica                         | muestra los detalles de la actividad | -                                           |
    | Detalles de actividad | escribe una reseña y hace clic en el botón 'Publicar'       | guarda el comentario                 | muestra la reseña en la lista visible para otros usuarios |

