*** Settings ***
Documentation    Suite Sicred Test
Resource          Sicred_resources.robot

*** Test Cases ***

Caso de teste 01 - "Adicionar cliente"
    
    Acessar a página https://www.grocerycrud.com/v1.x/demo/bootstrap_theme
    Mudar o valor da combo Select version para “Bootstrap V4 Theme”
    Clicar no botão Add Customer
    Preencher os campos do formulário com as seguintes informações:Name
    Preencher os campos do formulário com as seguintes informações: Last Name
    Preencher os campos do formulário com as seguintes informações: ContactFirstName
    Preencher os campos do formulário com as seguintes informações: Phone
    Preencher os campos do formulário com as seguintes informações: AddressLine1
    Preencher os campos do formulário com as seguintes informações: AddressLine2
    Preencher os campos do formulário com as seguintes informações: City
    Preencher os campos do formulário com as seguintes informações: State
    Preencher os campos do formulário com as seguintes informações: PostalCode
    Preencher os campos do formulário com as seguintes informações: Country
    Preencher os campos do formulário com as seguintes informações: from Employeer
    Preencher os campos do formulário com as seguintes informações: CreditLimit
    Clicar no botão Save
    Validar a mensagem “Your data has been successfully stored into the database. Edit Customer or Go back to list” através de uma asserção
    Fechar o browser

