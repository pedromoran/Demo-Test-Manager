@Login @Smoke
Feature: Inicio de Sesion 

  @ToBeAutomated
  Scenario: Iniciar sesion exitosamente con el usuario
    Given el cliente se encuentra en la pagina de login
    When el cliente ingresa al sistema con el usuario <usuario> y contrasenia <contrasenia>
    Then el usuario visualiza todos los proyectos en la pantalla de Dashboard
    Then no 4354 tested
  
  @Automated
  Scenario: Iniciar sesion con usuario erroneo.
    Given el cliente se encuentra en la pagina de login
    When el cliente ingresa al sistema con el usuario aaa y contrasenio
