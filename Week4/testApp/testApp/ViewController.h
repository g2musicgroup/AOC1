//
//  ViewController.h
//  testApp
//
//  Created by Gawain Bracy II on 3/28/13.
//  Copyright (c) 2013 Gawain Bracy II. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    // global vars
    UIStepper *stepperButtons;
    UILabel *stepperValueLabel;
    UILabel *loginMessage;
    UILabel *infoLabel;
    UITextField *userNameField;
    
}

@end

/*
 Assignment: Project 4 (8h)( Due: Thu, 28 Mar | Status: Not Completed )
 Each week you will be expected to create a project that shows you have understood the material presented.
 
 Objectives & Outcomes
 -Create UIButtons.
 -Call UIAlertViews when needed.
 -Use UILabels to dynamically display text.
 -Display a formatted NSDate.
 -Use click handlers to trigger actions.
 -Set UIView properties.
 
 Level of Effort
 This activity should take approximately 450m to complete. It will require:
 120m Research
 30m Prep & Delivery
 300m Work
 If you find that this activity takes you significantly less or more time than this estimate, please contact me for guidance.
 
 Instructions
 For your final project you will be creating an application that brings together a lot of what you have learned this month.
 You will be using UIButtons, UIAlertViews, UILabels, NSDate, click handlers, and UIView properties to create your application.
 The project is divided up into three sections on a single page. The login portion, the date portion and the information section. Instructions for each section are separated out below.
 Please note, that you will be creating a single onClick function that all three buttons will connect to. Please use the tag element of the button to determine which button was clicked.
 
 Login
 Create a UILabel near the top of your screen with teh text "Username:" in it.
 Create a UITextField to the right of the username label
 Create a rounded rectangle UIButton of any color under the UITextField with the text "Login" on it.
 Create another UILabel beneath with the default text "Please Enter Username".
 Add a target to the UIButton to call a function called onClick when the user presses the Login button.
 If the user has not entered any text into the UITextField, display in the UILabel, "Username cannot be empty". Otherwise, display "User: username has been logged in".
 Hint: NSString has a property called length that tells you how many characters are in the string.
 
 Date - this section will display a UIAlertView with the current date and time in it using an NSDate object.
 Create a UIButton using the rounded rectangle type. Give this button any color you wish.
 Add the text "Show Date" to the button
 Add an action to the button that when clicked, it will call the same onClick handler you already defined. Make sure to add a tag to the date button so you know which one was pressed.
 Display a UIAlertView with the current date and time displayed in the format seen in the dateAlert graphic in the assets section of this project assignment. You can either format the date and time manually or use the date and time styles. You must use an NSDate object to gather the date and time information.
 
 Information - this section will display the text "This application was created by: Firstname Lastname" in a label when the info button is clicked.
 Create a UIButton using either the light or dark info type and position it somewhere near the bottom of the screen.
 Create a UILabel beneath it that contains no initial text.
 Hook up an action to the info button to have it call the onClick handler you created earlier.
 When the button is pressed, have the text "This application was created by: Firstname Lastname" appear in the info UILabel. Please replace firstname lastname with your name.
 
 
*/