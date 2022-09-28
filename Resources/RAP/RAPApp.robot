*** Settings ***
#Resource    ./PO/FrontOffice.LandingPage.robot
Resource    ./PO/RAP.LoginPage.robot
Resource    ./PO/TopNav.robot

*** Keywords ***
Should be able to access Login page
    RAP.LoginPage.GoToLandingPage
    RAP.LoginPage.VerifyLandingPageLoaded

Should be able to login
    [Arguments]     &{USER}
    RAP.LoginPage.Login    &{USER}

Should be able to register an account
    [Arguments]     &{USER}
    RAP.LoginPage.Register    &{USER}