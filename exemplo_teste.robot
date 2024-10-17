*** Settings ***
Documentation    Arquivo de teste
Suite Setup      Log    Iniciando Suite de Teste
Suite Teardown   Log    Finalizando Suite de Teste
Test Setup       Log    Iniciando Teste
Test Teardown    Log    Finalizando Teste

*** Variables ***
${NUMERO_1}      10
${NUMERO_2}      20

*** Test Cases ***
Teste Simples
    [Documentation]    Teste simples que soma duas variáveis
    [Tags]    exemplosimples
    Log    Iniciando teste de soma
    Calcular soma    ${NUMERO_1}    ${NUMERO_2}

Teste Simples2
    [Documentation]    Teste simples que soma duas variáveis
    [Tags]    exemplosimples
    Log    Iniciando teste de soma
    Calcular soma2    ${NUMERO_1}    ${NUMERO_2}

*** Keywords ***
Calcular soma
    [Arguments]    ${arg1}    ${arg2}
    ${resultado}=    Evaluate    ${NUMERO_1} + ${NUMERO_2}
    Should Be Equal As Numbers    ${resultado}    30

Calcular soma2
    [Arguments]    ${arg1}    ${arg2}
    ${resultado}=    Evaluate    ${NUMERO_1} + ${NUMERO_2}
    Should Be Equal As Numbers    ${resultado}    29