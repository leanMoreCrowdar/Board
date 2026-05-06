Feature: #Here the title is described
  Here the feature is described
  
  Scenario: Error de pago por tarjeta rechazada
  Given el usuario autenticado tiene productos en el carrito y una dirección guardada "Calle Rivadavia 456, Córdoba, CP 5000"
  When navegar al checkout y validar el resumen del pedido con total "$7.890"
  And seleccionar método de pago "Tarjeta de crédito"
  And ingresar número "4000 0000 0000 0002", vencimiento "09/27" y CVV "321"
  And seleccionar cuota "1 pago sin interés" y confirmar el pago
  Then mostrar mensaje de error "Pago rechazado por el emisor. Verifique los datos o use otro medio."
  And mantener el estado del carrito sin cambios y permitir reintentar o cambiar método de pago
      
  #Here the scenario is described
  Scenario Outline: scenario title <field> <field2>
    Given preconditions
    When actions
    Then validations
    
    Examples:
      | field | field2 |
      | data  | data2  |