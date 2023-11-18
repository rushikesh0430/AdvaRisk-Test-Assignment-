*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem
Library    Screenshot
Resource    Veriables.robot

*** Variables ***
#all the veriables have been configured in seperate robot file (Swag_labs_variables) and used them as a Resource here

*** Tasks ***
Execute complete test case execution
    Login Swag Labs
    User Login Logout credential validation with all usernames
    Add and Remove all items to the cart and access the cart
    Select individual items and add to cart
    Add all items to the cart and complete order
    Filter Select Item Validation

Login Swag Labs
    Open browser and Login Swag Labs page
    Logout from page

User Login Logout credential validation with all usernames
    Open browser and Login Swag Labs page
    Logout from page
    login with Username locked
    login with Username problem
    Logout from page
    login with Username performance
    Logout from page
    login with Username error
    Logout from page
    login with Username visual
    Logout from page

Add and Remove all items to the cart and access the cart
    Open browser and Login Swag Labs page
    Add Items to Cart
    Remove from Cart
Select individual items and add to cart
    Open browser and Login Swag Labs page
    Add signel item to cart
    Items checkout steps

Add all items to the cart and complete order
    Open browser and Login Swag Labs page
    Add Items to Cart
    Items checkout steps

Filter Select Item Validation
    Open browser and Login Swag Labs page
    Different Filter Selection

Open browser and Login Swag Labs page
    Open Browser    ${URL}    chrome
    Maximize Browser Window
    login with Username Standard
    Wait Until Element Is Visible    ${products}

Logout from page
    Click Button    ${Menu_button}
    Sleep    1s
    Click Element    ${logout_button}
login with Username Standard
    Input Text    ${Username}    ${Username1_text}
    Input Text    ${password}    ${password_text}
    Click Button    ${Login_button}
    Sleep    2s


Add Items to Cart
    Click Button    ${Bag_pack}
    Click Button    ${Bike_light}
    Click Button    ${Bolt_T_shirt}
    Click Button    ${Fleece_jacket}
    Click Button    ${Onesie}
    Click Button    ${Red_T_shirt}
    Sleep    3s
    Page Should Contain    Remove
    Page Should Contain    6
    Click Element    ${Cart}
    All added Items validation in Your Cart
Remove from Cart
    Click Button    ${Bag_pack_remove}
    Click Button    ${Bike_light_remove}
    Click Button    ${Fleece_jacket_remove}
    Click Button    ${Bolt_T_shirt_remove}
    Click Button    ${Onesie_remove}
    Click Button    ${Red_T_shirt_remove}
    Sleep    2s
    All removed items validation in Your Cart
    Click Button    ${continue_shopping}

Add signel item to cart
    Click Element    ${Select_item}
    Wait Until Element Is Visible    ${item_price}
    Click Button    ${Single_add_cart}
    Page Should Contain    Remove
    Page Should Contain    1
    Click Element    ${Cart}
    Wait Until Page Contains    Sauce Labs Backpack
    Sleep    2s

Items checkout steps
    Click Button    ${Checkout}
    Page Should Contain    Checkout: Your Information
    Input Text    ${first_N}    Rushikesh
    Input Text    ${Last_N}    Patil
    Input Text    ${Zip_code}    412115
    Click Button    ${Continue}
    Page Should Contain    Payment Information
    Page Should Contain    Shipping Information
    Page Should Contain    Price Total
    Page Should Contain    Item total: $
    Page Should Contain    Tax: $
    Sleep    2s
    Click Button    ${Finish}
    Page Should Contain    Thank you for your order!
    Sleep    2s
    Click Button    ${Back_Home}
    Sleep    2s
    Wait Until Page Contains    Products

Different Filter Selection
    Click Element    ${filter_button}
    Click Element    ${price_low_To_high}
    Page Should Contain    Price (low to high)
    Click Element    ${filter_button}
    Click Element    ${price_high_To_low}
    Page Should Contain    Price (high to low)
    Click Element    ${filter_button}
    Click Element    ${Name_Ato_Z}
    Page Should Contain    Name (A to Z)
    Click Element    ${filter_button}
    Click Element    ${Name_Zto_A}
    Page Should Contain    Name (Z to A)
    Sleep    3s

*** Keywords ***
Login Swag Labs
    Open browser and Login Swag Labs page
    Logout from page

User Login Logout credential validation with all usernames
    Open browser and Login Swag Labs page
    Logout from page
    login with Username locked
    login with Username problem
    Logout from page
    login with Username performance
    Logout from page
    login with Username error
    Logout from page
    login with Username visual
    Logout from page

Add and Remove all items to the cart and access the cart
    Open browser and Login Swag Labs page
    Add Items to Cart
    Remove from Cart
Select individual items and add to cart
    Open browser and Login Swag Labs page
    Add signel item to cart
    Items checkout steps

Add all items to the cart and complete order
    Open browser and Login Swag Labs page
    Add Items to Cart
    Items checkout steps

Filter Select Item Validation
    Open browser and Login Swag Labs page
    Different Filter Selection

Open browser and Login Swag Labs page
    Open Browser    ${URL}    chrome
    Maximize Browser Window
    login with Username Standard
    Wait Until Element Is Visible    ${products}

Logout from page
    Click Button    ${Menu_button}
    Sleep    1s
    Click Element    ${logout_button}
login with Username Standard
    Input Text    ${Username}    ${Username1_text}
    Input Text    ${password}    ${password_text}
    Click Button    ${Login_button}
    Sleep    2s


Add Items to Cart
    Click Button    ${Bag_pack}
    Click Button    ${Bike_light}
    Click Button    ${Bolt_T_shirt}
    Click Button    ${Fleece_jacket}
    Click Button    ${Onesie}
    Click Button    ${Red_T_shirt}
    Sleep    3s
    Page Should Contain    Remove
    Page Should Contain    6
    Click Element    ${Cart}
    All added Items validation in Your Cart
Remove from Cart
    Click Button    ${Bag_pack_remove}
    Click Button    ${Bike_light_remove}
    Click Button    ${Fleece_jacket_remove}
    Click Button    ${Bolt_T_shirt_remove}
    Click Button    ${Onesie_remove}
    Click Button    ${Red_T_shirt_remove}
    Sleep    2s
    All removed items validation in Your Cart
    Click Button    ${continue_shopping}

Add signel item to cart
    Click Element    ${Select_item}
    Wait Until Element Is Visible    ${item_price}
    Click Button    ${Single_add_cart}
    Page Should Contain    Remove
    Page Should Contain    1
    Click Element    ${Cart}
    Wait Until Page Contains    Sauce Labs Backpack
    Sleep    2s

Items checkout steps
    Click Button    ${Checkout}
    Page Should Contain    Checkout: Your Information
    Input Text    ${first_N}    Rushikesh
    Input Text    ${Last_N}    Patil
    Input Text    ${Zip_code}    412115
    Click Button    ${Continue}
    Page Should Contain    Payment Information
    Page Should Contain    Shipping Information
    Page Should Contain    Price Total
    Page Should Contain    Item total: $
    Page Should Contain    Tax: $
    Sleep    2s
    Click Button    ${Finish}
    Page Should Contain    Thank you for your order!
    Sleep    2s
    Click Button    ${Back_Home}
    Sleep    2s
    Wait Until Page Contains    Products

Different Filter Selection
    Click Element    ${filter_button}
    Click Element    ${price_low_To_high}
    Page Should Contain    Price (low to high)
    Click Element    ${filter_button}
    Click Element    ${price_high_To_low}
    Page Should Contain    Price (high to low)
    Click Element    ${filter_button}
    Click Element    ${Name_Ato_Z}
    Page Should Contain    Name (A to Z)
    Click Element    ${filter_button}
    Click Element    ${Name_Zto_A}
    Page Should Contain    Name (Z to A)
    Sleep    3s
    
login with Username locked
    Input Text    ${Username}    ${Username2_text}
    Input Text    ${password}    ${password_text}
    Click Button    ${Login_button}
    Page Should Contain    Epic sadface: Sorry, this user has been locked out.
    Reload Page
    Sleep    2s

login with Username problem
    Input Text    ${Username}    ${Username3_text}
    Input Text    ${password}    ${password_text}
    Click Button    ${Login_button}
    Take Screenshot
    Sleep    2s

login with Username performance
    Input Text    ${Username}    ${Username4_text}
    Input Text    ${password}    ${password_text}
    Click Button    ${Login_button}
    Sleep    2s

login with Username error
    Input Text    ${Username}    ${Username5_text}
    Input Text    ${password}    ${password_text}
    Click Button    ${Login_button}
    Sleep    2s

login with Username visual
    Input Text    ${Username}    ${Username6_text}
    Input Text    ${password}    ${password_text}
    Click Button    ${Login_button}
    Sleep    2s

All added Items validation in Your Cart
    Page Should Contain    QTY
    Page Should Contain    Description
    Page Should Contain    Your Cart
    Page Should Contain    Sauce Labs Backpack
    Page Should Contain    Sauce Labs Bolt T-Shirt
    Page Should Contain    Sauce Labs Bike Light
    Page Should Contain    Sauce Labs Fleece Jacket
    Page Should Contain    Sauce Labs Onesie
    Page Should Contain    Test.allTheThings() T-Shirt (Red)

All removed items validation in Your Cart
    Page Should Not Contain    Sauce Labs Backpack
    Page Should Not Contain    Sauce Labs Bolt T-Shirt
    Page Should Not Contain    Sauce Labs Bike Light
    Page Should Not Contain    Sauce Labs Fleece Jacket
    Page Should Not Contain    Sauce Labs Onesie
    Page Should Not Contain    Test.allTheThings() T-Shirt (Red)
