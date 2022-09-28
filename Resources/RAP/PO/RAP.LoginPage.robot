*** Settings ***
Library    SeleniumLibrary

*** Variables ***


*** Keywords ***
GoToLandingPage
    go to   ${LOGIN_URL}

VerifyLandingPageLoaded
    wait until page contains    This application is developed with
    log    Login page vertification test

Login
   [Arguments]  &{USER}
   #BuiltIn.sleep    2
   Input Text   id=signInName   ${USER.ID}

   #BuiltIn.sleep    2
   Input Text   id=password     ${USER.password}

   #BuiltIn.sleep    2
   click button    id=next
   BuiltIn.sleep    5

   wait until page contains    Mijn Overzichten
   BuiltIn.sleep    2

Register
    [Arguments]  &{USER}

    #Username
    BuiltIn.sleep    2
    Input Text    xpath=//input[@type='text']    ${USER.ID}
    BuiltIn.sleep    2
    log        trying to register user1, entering username

    #Password
    BuiltIn.sleep    2
    Input Text       xpath=//div[@id='Login']/div[2]/div/table/tbody/tr/td[2]/div/input   ${USER.password}
    BuiltIn.sleep    2
    log     trying to register user1, entering password

    #Button
    BuiltIn.sleep    2
    click button     xpath=/html/body/div[3]/div[2]/div/div[2]/div/table/tbody/tr/td[4]/div/div/div/div/button
    BuiltIn.sleep    2
    log      trying to register user1, clicked register button

    BuiltIn.sleep     2
