               
*** Settings ***
Library     Browser
Library     DebugLibrary
Resource    resource.robot

*** Test Cases ***
Verify Copy - English
    Open Browser To Home Page
    Get Text    div.col--4:nth-child(1) > h3    ==  Test across all modern browsers
    Get Text    div.col--4:nth-child(1) > p    ==  Single API to automate Chromium, Firefox and WebKit.
    # div.col--4:nth-child(1)
    # New Page    https://playwright.dev
    # Get Text    h1    ==    Playwright enables reliable end-to-end testing for modern web apps.


    # Get Text    div.col--4:nth-child(1) > h3:nth-child(1)       contains      Test across all modern browsers

Verify Get Started Page
    Open Browser To Home Page
    Click   .getStarted_1iQB
    Debug
    # Get Text    h1.h1Heading_27L5
    # # .h1Heading_27L5
    # ${count} =  Get Element Count   .markdown > ul
    .markdown > ul:nth-child(6) > li:nth-child(1) > a:nth-child(1)
    # Debug
    