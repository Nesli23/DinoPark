*** Settings ***
Documentation    Testing to book tickets on the webpage
Library    SeleniumLibrary
Resource    keyword.robot
Variables    variables.py

*** Test Cases ***
Booking tickets
    Open Browser To Login Page
    Type In Username
    Type In Password
    Click On Buy Tickets Now Button
    Choose Ticket Type
    Choose Ticket Category
    Choose Quantity
    Click On Add To Cart Button
    Message That The Tickets Are Added To The Cart



