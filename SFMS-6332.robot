
*** Settings ***

Library    QForce

Library    QWeb


*** Test Cases ***

SFMS-6332
    [Documentation]   Test Case created using the QEditor
    OpenBrowser       about:blank       chrome
    GoTo              https://relx-elsevier--sfmqa.my.salesforce.com/
    TypeText          Username          r.k@elsevier.com.sfmqa
    TypeSecret        Password          vellore456
    ClickText         Log In to Sandbox
    ClickText         Verification Code
    TypeText          Verification Code     640201
    ClickText         Verify
    ClickText         Setup
    SwitchWindow      New Setup Tab
    ClickText         Opens in a new tab
    TypeText          Quick Find        profiles
    ClickText         P
    SwitchWindow      Selecting Profiles
    ClickText         Search...
    TypeText          Search...         00247488
    ClickText         00247488
    VerifyField       SFM Support       SFM Support Label     partial_match=True
    ClickText         Case Record Type
    ClickText         Edit Send Survey
    ClickCheckbox     Send Survey       on
    ClickText         Save              anchor=SaveEdit
    ClickText         Search...
    TypeText          Search...         00247203
    ClickText         00247203
    VerifyField       CS Customer Success   CS Customer Success   partial_match=True
    VerifyText        CS Customer Success
    ClickText         Edit Send Survey
    PickList          Send Survey       Yes
    ClickText         Save              anchor=SaveEdit
