*** Settings ***
Library    SeleniumLibrary
Resource    ../Keywords/PositiveLogintest.robot

*** Variables ***
${url}    https://practicetestautomation.com/practice-test-login/  
${browser}    gc
${userCorrect}    student
${password}     Password123
*** Test Cases ***
Login_Test_Positif
    [Tags]    positive
    Ouvrir le navigateur    ${url}    ${browser} 
    Remplir formulaire de login     ${userCorrect}      ${password} 
    Verifier url
    Valider le succes de login
    Verifier le bouton Logout est affichee
    Fermer les fenetres des navigateurs
