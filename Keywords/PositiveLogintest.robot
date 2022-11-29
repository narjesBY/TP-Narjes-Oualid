*** Settings ***
Library    SeleniumLibrary
Variables   ../PageObjects/locators.py

*** Keywords ***
Ouvrir le navigateur
    [Documentation]    ce mot cle permet d`ouvrir l`application sous Test
    [Arguments]    ${url}    ${browser}         
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Sleep    2

Remplir formulaire de login
    [Documentation]    ce mot cle permet de remplir le formulaire de login 
    [Arguments]    ${user}    ${password}   
    Input Text    ${txt_UserName}    ${user}
    Input Password    ${txt_Password}     ${password}
    Click Button    ${btn_login} 
    Sleep    3

Verifier url
    [Documentation]    ce mot cle permet de Verifier url 
    ${URL_SITE}    Get Location
    Log    ${URL_SITE}
    Should Be Equal     ${URL_SITE}    ${URL_Attendue} 

Valider le succes de login
    [Documentation]    ce mot cle permet de valider le succes login
    Page Should Contain    successfully logged in

Verifier le bouton Logout est affichee
    Element Should Be Visible    xpath://*[@id="loop-container"]/div/article/div[2]/div/div/div/a
    Sleep    2
Fermer les fenetres des navigateurs
    Close All Browsers
   
