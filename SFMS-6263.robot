
*** Settings ***

Library    QForce

Library    QWeb


*** Test Cases ***

SFMS-6263
    [Documentation]   Test Case created using the QEditor
    QWeb.OpenBrowser      about:blank       chrome
    GoTo              https://relx-elsevier--sfmqa.my.salesforce.com/visualforce/session?url\=https%3A%2F%2Frelx-elsevier--sfmqa.lightning.force.com%2Flightning%2Fo%2FLead%2Fhome
    TypeText          Username          relx-elsevier--sfmqa.my.salesforce.com
    TypeSecret        Password          vellore456
    ClickText         Log In to Sandbox
    TypeText          Username          relx-elsevier--sfmqa.my.salesforce.com
    TypeSecret        Password          vellore456
    ClickText         Log In to Sandbox
    TypeText          Username          r.k@elsevier.com.sfmqa
    TypeSecret        Password          vellore456
    ClickText         Log In to Sandbox
    TypeText          Verification Code     163868
    ClickText         Verify
    UseTable          xpath\\=//*[@id\\='brandBand_1']/div[1]/div[1]/div[1]/div[1]/div[2]/div[1]/div[1]/div[2]/div[2]/div[1]/div[1]/div[1]/table[1]
    ClickCell         r9c3
    ClickText         Edit              partial_match=False
    UseModal          On
    ClickText         Close this window
    UseModal          Off
    ClickText         Edit Existing Customer
    ClickText         Clear Selection
    ClickText         Existing Customer     partial_match=False
    ClickText         QA SFMS-5871 vbk Queue: Government & Corporate China
    ClickText         Save
    ClickText         Edit Existing Customer
    ClickText         Clear Selection
    ClickText         Save
    ClickText         Edit              partial_match=False
    UseModal          On
    PickList          Lead Source       Marketing
    PickList          Reject Reason     Reassign Lead
    OpenBrowser       about:blank       chrome
