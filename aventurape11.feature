Feature: Ver detalles completos de una actividad

  Scenario Outline: Visualización de detalles de actividades
    Given que el aventurero está viendo la galería de actividades
    When selecciona una actividad <tipo>
    Then el sistema <resultado1>
    And <resultado2>

  Examples:
    | tipo                      | resultado1                                     | resultado2                                               |
    | que tiene imágenes        | carga y muestra una página con toda la información detallada | -                                                       |
    | cuyas imágenes fallaron  | muestra un ícono genérico de la categoría      | muestra el mensaje: "Imágenes no disponibles en este momento" |
