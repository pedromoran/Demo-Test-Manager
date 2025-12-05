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

  @NoCandidate @Smoke
  Scenario Outline: Iniciar sesión con datos inválidos
    Given el cliente se encuentra en la página de login
    When el cliente ingresa al sistema con el usuario <usuario> y contraseña <contraseña>
    Then el cliente visualiza el error de login <mensaje>

    Examples:
      | usuario        | contraseña         | mensaje                       |
      | automation.ltm | contraseniaErronea | Invalid username or password. |
      | usuarioErroneo | 1234               | Invalid username or password. |
      |                | 123345             | Invalid username or password. |
      |                |                    | Invalid username or password. |
      | 24576898       |                    | Invalid username or password. |
      
  @Automated
  Scenario: Iniciar sesión con usuario Deshabilitado
    Given el cliente se encuentra en la página de login
    When el cliente está logueado con el usuario de deshabilitado
    Then el cliente visualiza el error con la cuenta deshabilitada Invalid username or password.
