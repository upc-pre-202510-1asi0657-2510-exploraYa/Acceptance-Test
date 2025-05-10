Feature: Visualizar comentarios en mis publicaciones

  Scenario Outline: Acceso a comentarios como empresario
    Given que el empresario ha iniciado sesión y está en su sección de inicio
    When selecciona una publicación <tipo> y navega a la sección 'Comentarios'
    Then el sistema <resultado1>
    And <resultado2>

  Examples:
    | tipo                 | resultado1                                      | resultado2                                                        |
    | que tiene comentarios| muestra una lista de todos los comentarios      | incluye el texto, la calificación y el nombre del aventurero que lo dejó |
    | recién creada        | muestra un mensaje indicando que no hay comentarios | sugiere un botón para compartir la publicación en redes sociales       |
