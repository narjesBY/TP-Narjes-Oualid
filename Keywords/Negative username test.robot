*** Settings ***
Library    SeleniumLibrary
Variables   ../PageObjects/locators.py

*** Keywords ***
Ouvrir le navigateur
    [Documentation]    ce mot cle permet d`ouvrir l`application sous Test
    [Arguments]    ${url}    ${browser}         
    Open Browser    ${url}   ${browser}
    Maximize Browser Window
    Sleep    2

Remplir formulaire de login
    [Documentation]    ce mot cle permet de remplir le formulaire de login 
    [Arguments]    ${user}    ${password}   
    Input Text    ${txt_UserName}    ${user}
    Input Password    ${txt_Password}     ${password}
    Click Button    ${btn_login} 
    Sleep    3
    
    
Verifier error message est affichee
    Element Should Be Visible    class=show
    ${ErrorMessage}    Get Text     ${link_ErrorMessage}
    Log    message error:
       

Verifier le texte error message 
    Page Should Contain    ${Lbl_Text__Error_username}
    Sleep    2
    
Fermer les fenetres des navigateurs
    Close All Browsers