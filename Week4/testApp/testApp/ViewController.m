//
//  ViewController.m
//  testApp
//
//  Created by Gawain Bracy II on 3/28/13.
//  Copyright (c) 2013 Gawain Bracy II. All rights reserved.
//

#import "ViewController.h"

#define BUTTON_LOGIN 0
#define BUTTON_DATE  1
#define BUTTON_INFO  2

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    // change background of view
    self.view.backgroundColor = [UIColor colorWithRed:0.8 green:0.8 blue:0.8 alpha:1] /*#cccccc*/;
    
    
    /* ALLOC AND INIT VARIABLES */
    // login vars
    UIButton *loginButton      = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    UILabel *userNameLabel     = [[UILabel     alloc] initWithFrame:(CGRectMake(010.0f, 010.0f, 090.0f, 029.0f))];
    loginMessage               = [[UILabel     alloc] initWithFrame:(CGRectMake(000.0f, 100.0f, 320.0f, 100.0f))];
    userNameField              = [[UITextField alloc] initWithFrame:(CGRectMake(100.0f, 010.0f, 205.0f, 030.0f))];
    
    // date vars
    UIButton *dateButton        = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    
    // information vars
    UIButton *infoButton        = [UIButton buttonWithType:UIButtonTypeInfoDark];
    infoLabel                   = [[UILabel alloc] initWithFrame:(CGRectMake(0.0f, 470.0f, 320.0f, 30.0f))];
    
    // stepper vars
    UILabel *qntLabel  = [[UILabel   alloc] initWithFrame:(CGRectMake(060.0f, 245.0f, 040.0f, 20.0f))];
    stepperValueLabel  = [[UILabel   alloc] initWithFrame:(CGRectMake(100.0f, 245.0f, 050.0f, 20.0f))];
    stepperButtons     = [[UIStepper alloc] initWithFrame:(CGRectMake(170.0f, 242.0f, 050.0f, 20.0f))];
    
    // seperating lines
    UIView *loginHR            = [[UIView alloc] initWithFrame:(CGRectMake(000.0f, 220.0f, 320.0f, 002.0f))];
    UIView *dateHR             = [[UIView alloc] initWithFrame:(CGRectMake(000.0f, 290.0f, 320.0f, 002.0f))];
    UIView *stepperHR          = [[UIView alloc] initWithFrame:(CGRectMake(000.0f, 350.0f, 320.0f, 002.0f))];
    UIView *infoHR             = [[UIView alloc] initWithFrame:(CGRectMake(000.0f, 520.0f, 320.0f, 002.0f))];
    
    
    
    /*     Login     */
    if ( userNameLabel != nil )
    {
        // userNameLabel special properties
        userNameLabel.text = @"Username:";
        userNameLabel.backgroundColor = [UIColor clearColor];
        
        // loginMessage special properties
        loginMessage.text = @"Please Enter Username";
        loginMessage.textAlignment = NSTextAlignmentCenter;
        loginMessage.adjustsFontSizeToFitWidth = YES;
        
        // userNameField special properties
        userNameField.backgroundColor = [UIColor whiteColor];
        [userNameField setBorderStyle:UITextBorderStyleBezel];
        
        // loginButton special properties
        loginButton.frame =  CGRectMake(245.0f, 50.0f, 60.0f, 30.f);
        [loginButton setTitle:@"Login" forState:UIControlStateNormal];
        
        // set buttons action
        [loginButton addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
        
        // set button tag
        loginButton.tag = BUTTON_LOGIN;
        
        // add subviews
        [self.view addSubview:userNameLabel];
        [self.view addSubview:loginMessage];
        [self.view addSubview:userNameField];
        [self.view addSubview:loginButton];
    }
    
    /*     Date
     - this section will display a UIAlertView with the current date and time in it using an NSDate object.      */
    if ( dateButton != nil )
    {
        // dateButton special properties
        dateButton.frame = CGRectMake(200.0f, 310.0f, 100.0f, 30.0f);
        dateButton.tintColor = [UIColor redColor];
        [dateButton setTitle:@"Show Date" forState:UIControlStateNormal];
        
        // set buttons action
        [dateButton addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
        
        // set button tag
        dateButton.tag = BUTTON_DATE;
        
        // add subviews
        [self.view addSubview:dateButton];
    }
    
    /*     Information
     - this section will display the text "This application was created by: Firstname Lastname" in a label when the info button is clicked.     */
    if ( ( infoButton != nil ) && ( infoLabel != nil ) )
    {
        
        // infoButton special properties
        infoButton.frame = CGRectMake(10.0f, 420.0f, 30.0f, 50.0f);
        
        // infoLabel special properties
        infoLabel.text = nil;
        infoLabel.textAlignment = NSTextAlignmentCenter;
        infoLabel.adjustsFontSizeToFitWidth = YES;
        infoLabel.backgroundColor = [UIColor clearColor];
        
        
        // set buttons action
        [infoButton addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
        
        // set button tag
        infoButton.tag = BUTTON_INFO;
        
        // add subviews
        [self.view addSubview:infoButton];
        [self.view addSubview:infoLabel];
    }
   
    // Put in a stepper too and make it have a submit button
    if (( stepperButtons != nil ) && ( stepperValueLabel != nil ))
    {
        // stepper properties
        stepperButtons.minimumValue = 0;
        stepperButtons.maximumValue = 10;
        stepperValueLabel.text = [NSString stringWithFormat:@"%.f", stepperButtons.value];
        stepperValueLabel.backgroundColor = [UIColor clearColor];
        qntLabel.backgroundColor = [UIColor clearColor];
        qntLabel.text = @"Qnt:";
        
        // add stepper to view
        [self.view addSubview:stepperValueLabel];
        [self.view addSubview:stepperButtons];
        [self.view addSubview:qntLabel];
        
        // Set action target and action for a particular value changed event for the stepper
        [stepperButtons addTarget:self action:@selector(stepperPressed:) forControlEvents:UIControlEventValueChanged];
    }
   
    // seperating horizontal rules (hr) lines
    if ( loginHR != nil )
    {
        // login seperator line special properties
        loginHR.backgroundColor     = [UIColor lightGrayColor];
        dateHR.backgroundColor      = [UIColor lightGrayColor];
        stepperHR.backgroundColor   = [UIColor lightGrayColor];
        infoHR.backgroundColor      = [UIColor lightGrayColor];
        
        
        // add lines to view (naming of lines is for the section above the line.. i.e. loginHR is the line below the login section)
        [self.view addSubview:loginHR];
        [self.view addSubview:dateHR];
        [self.view addSubview:stepperHR];
        [self.view addSubview:infoHR];
    }
    
    // Bolt the Dog easter egg to satisfy additional rubric requirements.
    
    // cast float value ot int while logging to console
    float friends = 3;
    NSLog(@"Friends needed to power super bark: %d friends", (int)friends);
    
    // setup some variables
    float currentPower = 0;
    float neededSpeed = 141.6;
    float currentSpeed = 0;
    BOOL catPrisoner = TRUE;
    BOOL lightningStripe = FALSE;
    
    // the real back to the future loop program
    do { // nested loops, if statement, bool and float comparison, increasing int, logging to console, etc.
        // check car and power
        NSLog(@"Current power: %.2f friends", currentPower);
        if ((catPrisoner == TRUE) && (currentPower == friends))
        {
            // 88 miles per hour (141.6 km/h) needed
            for (float n = 0; n < currentSpeed; n+=0.1)
            {
                for (int i = 10000; i > 0 ; i--)
                {
                    NSLog(@"Get ready!!");
                }
                NSLog(@"Run as fast as you can, then jump!! going %.1f km/h", (float)n);
            }
            NSLog(@"Going to save Penny %.1f km/h!!!", neededSpeed);
            lightningStripe = TRUE;
        }
        else if (catPrisoner == FALSE) // breaking out of the do while loop and my else if
        {
            // you lost your cat prisoner
            NSLog(@"Sorry, you must have a cat prisoner to continue.");
            break;
        }
        else // single loop and else statement
        {
            // add more bravery
            for (float n = 0; n < friends; n+=0.01)
            {
                NSLog(@"Bolt has more bravery. Running at %.2f friends!", n);
            }
            // set currentPower to friends
            currentPower = friends;
            
        }
    } while (lightningStripe == FALSE);
    
    
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

// Please note, that you will be creating a single onClick function that all three buttons will connect to. Please use the tag element of the button to determine which button was clicked.
- (void)onClick:(UIButton*)button
{
    switch (button.tag) {
        case BUTTON_LOGIN:
        {
            // If the user has not entered any text into the UITextField, display in the UILabel, "Username cannot be empty". Otherwise, display "User: username has been logged in".
            
            // if the login button is pressed and released
            // check if username is empty (I know both statements are the same, i needed an or check and wanted to use your hint as well)
            if (( userNameField.text == nil ) || ( userNameField.text.length == 0 ))
            {
                // change login message
                loginMessage.text = @"Username cannot be empty";
            }
            else // successful login
            {
                // change login message
                loginMessage.text = [NSString stringWithFormat:@"%@ has been logged in", userNameField.text];
            }
            
            // make keyboard go away
            [userNameField resignFirstResponder];
            
        }
            break;
        
        case BUTTON_DATE:
        {
            //  Display a UIAlertView with the current date and time displayed in the format seen in the dateAlert graphic in the assets section of this project assignment. You can either format the date and time manually or use the date and time styles. You must use an NSDate object to gather the date and time information.
            
            NSMutableString *dateString = [[NSMutableString alloc] initWithString:@"default"];
            NSDate *date = [NSDate date];
            NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
            
            // is the dateFormatter built correctly?
            if (( dateFormatter != nil ))
            {
                [dateFormatter setDateFormat:@"MMM dd, yyyy hh:mma zzz"]; // set date formatter
                dateString.string = [dateFormatter stringFromDate:date];  // format the date string with the formatter
                
                // Create the alert view
                UIAlertView *dateAlertView = [[UIAlertView alloc] initWithTitle:@"Date" message:dateString delegate:nil cancelButtonTitle:@"Cancel" otherButtonTitles:nil];
                
                // show alert view
                [dateAlertView show];
            }
            
        }
            break;
            
        case BUTTON_INFO:
        {
            // When the button is pressed, have the text "This application was created by: Firstname Lastname" appear in the info UILabel. Please replace firstname lastname with your name.
            infoLabel.text = @"This application was created by: Gawain Bracy II";
        }
            break;
            
        default:
        {
            // if no case exists
            NSLog(@"What happened?");
        }
            break;
    }
}
// UIStepper pressed event for changing value of UILabel
- (void)stepperPressed:(UIStepper*)sender
{
    // set the stepperButtons value to a new var
    double stepperValue = stepperButtons.value;
    
    // set the steppers uilabel to the new stepped number
    stepperValueLabel.text = [NSString stringWithFormat:@"%.f", stepperValue];
}




- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
