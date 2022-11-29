*** Settings ***
Library    SeleniumLibrary
Resource    ../Keywords/Negative password test.robot


*** Variables ***
${url}    https://practicetestautomation.com/practice-test-login/  
${browser}    gc
${userInCorrect}    student
${passwordIncorrect}     Pass
*** Test Cases ***
Login_Test_NegativePassword
    [Tags]    negative
    Ouvrir le navigateur    ${url}    ${browser} 
    Remplir formulaire de login     ${userInCorrect}      ${passwordIncorrect} 
    Verifier error message est affichee
    Verifier le texte error message (errorpassword )
    Fermer les fenetres des navigateurs
