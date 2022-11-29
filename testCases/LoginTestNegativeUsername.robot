*** Settings ***
Library    SeleniumLibrary
Resource    ../Keywords/Negative username test.robot

*** Variables ***
${url}    https://practicetestautomation.com/practice-test-login/  
${browser}    gc
${userInCorrect}    stu
${password}     Password123


*** Test Cases ***
Login_Test_NegativeUsername
    [Tags]    negative
    Ouvrir le navigateur    ${url}    ${browser} 
    Remplir formulaire de login     ${userInCorrect}      ${password} 
    Verifier error message est affichee
    Verifier le texte error message 
    Fermer les fenetres des navigateurs