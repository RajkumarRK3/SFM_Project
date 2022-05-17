
*** Settings ***

Library    QForce

Library    QWeb


*** Test Cases ***

SFMS-6247
    [Documentation]   Test Case created using the QEditor
    OpenBrowser       about:blank       chrome
    OpenBrowser       about:blank       chrome
    GoTo              https://relx-elsevier--sfmqa.my.salesforce.com/visualforce/session?url\=https%3A%2F%2Frelx-elsevier--sfmqa.lightning.force.com%2Flightning%2Fr%2FCase%2F5003M000006YY59QAG%2Fview
    TypeText          Username          r.k@elsevier.com.sfmqa
    TypeSecret        Password          vellore456
    ClickCheckbox     Remember me       on
    ClickText         Log In to Sandbox
    ClickCheckbox     Don't ask again   off
    ClickText         Verification Code
    TypeText          Verification Code     652876
    ClickText         Verify
    ClickText         Edit Query Type
    PickList          Query Type        Contract
    PickList          Query Sub-Type    COA/Restore/Reduced Content
    ClickText         Save              anchor=SaveEdit
    ClickText         Edit Query Type
    PickList          Query Type        Contract Envelope
    PickList          Query Sub-Type    Void
    ClickText         Save              anchor=SaveEdit
    ClickText         Edit Query Type
    PickList          Query Type        Quotes
    PickList          Query Sub-Type    Trial
    ClickText         Save              anchor=SaveEdit
    ClickText         Edit Query Type
    PickList          Query Type        Order
    PickList          Query Sub-Type    Multi-Year Deal
    ClickText         Save              anchor=SaveEdit
    OpenBrowser       about:blank       chrome
    GoTo              https://relx-elsevier--sfmqa.my.salesforce.com/
    TypeText          Username          r.k@elsevier.com.sfmqa
    TypeSecret        Password          vellore456
    ClickText         Log In to Sandbox
    ClickText         Verification Code
    TypeText          Verification Code     283478
    ClickText         Verify
    OpenBrowser       about:blank       chrome

OpenBrowser    about:blank    chrome

