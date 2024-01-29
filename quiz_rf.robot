*** Settings ***
Documentation     Quiz RF 64023241 "TestCase 1"
Library           SeleniumLibrary
Suite Setup       Open Browser    https://automationexercise.com/    chrome
# Suite Teardown    Close Browser

*** Variables ***
${NAME}    kumaMUMI
${EMAIL}    kumamumi.seup@gmail.com
${PASSWORD}    Kim172550
${First_Name}    Natthawat
${Last_Name}    Sirimart
${Company}    -
${Address}    140
${Address2}    140
${State}    Test
${City}    Test
${Zipcode}    0001
${Mobile_Number}    0951128117

*** Keywords ***
Click Register
    Click Element    //*[@id="header"]/div/div/div/div[2]/div/ul/li[4]/a

Input Name
    [Arguments]    ${NAME}
    Input Text    //*[@name="name"]    ${NAME}

Input Email
    [Arguments]    ${EMAIL}
    Input Text    //*[@data-qa="signup-email"]    ${EMAIL}

Click Singup
    Click Button    //*[@id="form"]/div/div/div[3]/div/form/button

Check Title
    Click Button    //*[@name="title"]

Input Password
    [Arguments]    ${PASSWORD}
    Input Text    //*[@data-qa="password"]    ${PASSWORD}

Select Day
    Click Element    //*[@data-qa="days"]
    Click Element    //*[@value="17"]

Select Month
    Click Element    //*[@data-qa="months"]
    Click Element    //*[@id="months"]/option[7]

Select Year
    Click Element    //*[@data-qa="years"]
    Click Element    //*[@value="2002"]

Check Newsletter
    Click Button    //*[@id="newsletter"]

Check Optin
    Click Button    //*[@id="optin"]

Select Country
    Click Element    //*[@data-qa="country"]
    Click Element    //*[@id="country"]/option[3]

Input Frist Name
    [Arguments]    ${First_Name}
    Input Text    //*[@data-qa="first_name"]    ${First_Name}

Input Last Name
    [Arguments]    ${Last_Name}
    Input Text    //*[@data-qa="last_name"]    ${Last_Name}

Input Company
    [Arguments]    ${Company}
    Input Text    //*[@data-qa="company"]    ${Company}

Input Address
    [Arguments]    ${Address}
    Input Text    //*[@data-qa="address"]    ${Address}

Input Address2
    [Arguments]    ${Address2}
    Input Text    //*[@data-qa="address2"]    ${Address2}

Input State
    [Arguments]    ${State}
    Input Text    //*[@data-qa="state"]    ${State}

Input City
    [Arguments]    ${City}
    Input Text    //*[@data-qa="city"]    ${City}

Input Zipcode
    [Arguments]    ${Zipcode}
    Input Text    //*[@data-qa="zipcode"]    ${Zipcode}

Input Mobile_Number
    [Arguments]    ${Mobile_Number}
    Input Text    //*[@data-qa="mobile_number"]    ${Mobile_Number}

Create Account
    Click Button    //*[@data-qa="create-account"]

Delete Account
    Click Element   //*[@id="header"]/div/div/div/div[2]/div/ul/li[5]/a

Click Continue
    Click Element    //*[@id="form"]/div/div/div/div/a
*** Test Cases ***
Register
    Click Register
    Page Should Contain Element    //*[@id="form"]/div/div/div[3]/div/h2
    Input Name    ${NAME}
    Input Email    ${EMAIL}
    Click Singup
    Page Should Contain Element    //*[@id="form"]/div/div/div/div[1]/h2/b
    Check Title
    Input Password    ${PASSWORD}
    Select Day
    Select Month
    Select Year
    Check Newsletter
    Check Optin
    Input Frist Name    ${First_Name}
    Input Last Name    ${Last_Name}
    Input Company    ${Company}
    Input Address    ${Address}
    Input Address2    ${Address2}
    Select Country
    Input State    ${State}
    Input City    ${City}
    Input Zipcode    ${Zipcode}
    Input Mobile_Number    ${Mobile_Number}
    Create Account
    Page Should Contain Element    //*[@id="form"]/div/div/div/h2/b
    Click Continue
    Page Should Contain Element    //*[@id="header"]/div/div/div/div[2]/div/ul/li[10]/a/b
    Delete Account
    Page Should Contain Element    //*[@id="form"]/div/div/div/h2/b
    Click Continue