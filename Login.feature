@Login @Regression
Feature: Inicio de Sesion 

  @NoCandidate @Smoke
  Scenario Outline: Iniciar sesión exitosamente con el usuario <usuario>
    Given el cliente se encuentra en la página de login
    When el cliente se loguea con el usuario de <usuario>
    Then el usuario visualiza todos los proyectos en la pantalla de Dashboard 

    Examples:
      | usuario     |
      | openia      |
      | automation  |
      | credentials |

  @Automated
  Scenario: Iniciar sesión con usuario Deshabilitado
    Given el cliente se encuentra en la página de login
    When el cliente está logueado con el usuario de deshabilitado
    Then el cliente visualiza el error con la cuenta deshabilitada Invalid username or password.
