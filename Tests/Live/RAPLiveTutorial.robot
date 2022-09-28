*** Settings ***
Documentation       Testing Rap tutorial

Resource            ../../Data/InputData.robot
Resource            ../../Resources/Common/Common.robot
Resource            ../../Resources/RAP/RAPApp.robot

Test Setup          Common.Begin web test
Test Teardown       Common.End web test

*** Variables ***
${BROWSER}      chrome
${LOGIN_URL}    https://rap.cs.ou.nl/#/Login

*** Test Cases ***
Should be able to access login page
    [Documentation]    vertify login page is loading
    [Tags]  Smoke
    RAPApp.Should be able to access Login page

#Login to existing account 1
#    [Documentation]    verify loggin into accout 1 is working
#    [Tags]  Functional
#    RAPApp.Should be able to access Login page
#    Should be able to login     &{USER_1}

Register account 1
    [Documentation]    verify register account 1 is working
    [Tags]  Functional
    RAPApp.Should be able to access Login page
    Should be able to register an account    &{USER_1}

#Simply tests run
#robot -d results tests/NuTwenteLogin.robot
#robot -d results tests/NuTwente/NuTwenteLogin.robot

#Complex tests run (-L Trace gives even more info)
#robot -d results -L debug --reporttitle "RobotFramework Report 28/09" --logtitle "RobotFramework Log" --timestampoutputs tests/NuTwenteLogin.robot