@webmail
Feature: Access the webmail

  Background:
    Given I`m on Home Screen

  @webmail_fail
  Scenario: Access the webmail
    Given I click on Webmail link
    When I fill email and password with wrong data
    And Click on Entrar
    Then Should be displayed a error message 'Nome de usuário ou senha incorretos.'
