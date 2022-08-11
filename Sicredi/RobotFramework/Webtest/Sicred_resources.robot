*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}    chrome
${URL}        https://www.grocerycrud.com/v1.x/demo/bootstrap_theme



*** Keywords ***
Acessar a página https://www.grocerycrud.com/v1.x/demo/bootstrap_theme
    Open browser  url=${URL}    browser=${BROWSER}
    Maximize Browser Window
Mudar o valor da combo Select version para “Bootstrap V4 Theme”
    Wait Until Element Is Visible    //*[@id="switch-version-select"]
    Click Element    //*[@id="switch-version-select"]
    Click Element    //*[@id="switch-version-select"]/option[2]
Clicar no botão Add Customer
    Wait Until Element Is Enabled    //*[@id="gcrud-search-form"]/div[1]/div[1]/a
    Double Click Element    //*[@id="gcrud-search-form"]/div[1]/div[1]/a   
Preencher os campos do formulário com as seguintes informações: Name
    Wait Until Element Is Enabled    //*[@id="field-customerName"]
    Click Element    //*[@id="field-customerName"]
    Input Text    //*[@id="field-customerName"]    Teste Sicredi
Preencher os campos do formulário com as seguintes informações: Last Name
    Click Element    //*[@id="field-contactLastName"]
    Input Text    //*[@id="field-contactLastName"]    Teste
Preencher os campos do formulário com as seguintes informações: ContactFirstName
    Click Element    //*[@id="field-contactFirstName"]
    Input Text    //*[@id="field-contactFirstName"]    Andre Luiz de Antoni
Preencher os campos do formulário com as seguintes informações: Phone
    Click Element    //*[@id="field-phone"]
    Input Text    //*[@id="field-phone"]    51 9999-9999
Preencher os campos do formulário com as seguintes informações: AddressLine1
    Click Element    //*[@id="field-addressLine1"]
    Input Text    //*[@id="field-addressLine1"]    AV Assis Brasil, 3970
Preencher os campos do formulário com as seguintes informações: AddressLine2
    Click Element    //*[@id="field-addressLine2"]
    Input Text    //*[@id="field-addressLine2"]    Torre D
Preencher os campos do formulário com as seguintes informações: City
    Wait Until Element Is Enabled    //*[@id="field-city"]
    Click Element    //*[@id="field-city"]
    Input Text    //*[@id="field-city"]    Porto Alegre
Preencher os campos do formulário com as seguintes informações: State
    Click Element    //*[@id="field-state"]
    Input Text    //*[@id="field-state"]    RS
Preencher os campos do formulário com as seguintes informações: PostalCode
    Click Element    //*[@id="field-postalCode"]
    Input Text    //*[@id="field-postalCode"]    91000-000
    Scroll Element Into View    //*[@id="form-button-save"]
Preencher os campos do formulário com as seguintes informações: Country
    Click Element    //*[@id="field-country"]
    Input Text    //*[@id="field-country"]    Brasil
Preencher os campos do formulário com as seguintes informações: from Employeer
    Click Element    //*[@id="field_salesRepEmployeeNumber_chosen"]/a/div/b
    Click Element    //*[@id="field_salesRepEmployeeNumber_chosen"]/a/span
    
Preencher os campos do formulário com as seguintes informações: CreditLimit
    Click Element    //*[@id="field-creditLimit"]
    Input Text    //*[@id="field-creditLimit"]    200

Clicar no botão Save
    Click Button    //*[@id="form-button-save"]
    Scroll Element Into View    //*[@id="cancel-button"]
    
Validar a mensagem “Your data has been successfully stored into the database. Edit Customer or Go back to list” através de uma asserção
    Sleep    5s
    Wait Until Element Is Enabled    //*[@id="report-success"]
    
Fechar o browser
    Scroll Element Into View    //*[@id="cancel-button"]
    Click Element    //*[@id="save-and-go-back-button"]
    Wait Until Element Is Enabled    //*[@id="gcrud-search-form"]/div[2]/table/thead/tr[1]/th[1]
    Sleep    5s
    Close Browser   