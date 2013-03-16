//
//  ViewController.h
//  testApp
//
//  Created by Gawain Bracy II on 3/15/13.
//  Copyright (c) 2013 Gawain Bracy II. All rights reserved.
//

/*
 Author: Gawain Bracy II
 Descritpion: FSO AOC1 1303 Week 2 Assignment
 
 Resources
 Web color to UIColor: http://www.touch-code-magazine.com/web-color-to-uicolor-convertor/
 
 
 Instructions
 In this example you will be utilizing the information you've learned about UILabels, NSString and arrays. You will need to choose a book that you have read and use it as the source information for this project
 
 Make sure that all label background colors are different and all label text colors are different. All text will need to be readable so choose the colors wisely. All UI elements must be created in code and not using Interface Builder at this time. We do this so you understand how UI creation works in detail.
 
 View
 1) Change the background color of the view to any color you wish.
 
 Book Information and UILabels
 1) Create a UILabel and place it at the top of the view. This is used as the title of the book. Center the text for this label.
 
 2) Create another label that contains the text "Author:" with the text right justified.
 3) Create a UILabel to the right of the author title label and have it contain the name of the author of the book you chose. This text will be left justified.
 
 4) Create a UILabel on the next line called "Published:". This text is right justified.
 5) Create a label next to the Published label and add the text of when the book was published. This text is left justified.
 
 6) Create a UILabel with the text "Summary". This text is left justified.
 7) Create another UILabel that contains a small summary of the book's plot. This text is centered and should span multiple lines.
 
 Labels and Arrays
 1) Create an NSArray of 5 items talked about in the book. These items will be NSStrings. Add the items to the array.
 2) Create a variable of type NSMutableString and allocate it. Loop through the NSArray you created and append each of these items to your NSMutableString separated by commas. (For example: dinosaurs, jeeps, storm, giant turkeys, eating people)
 3) Create a label with the text "List of items" and add it to the parent view. Make sure the text is left justified.
 4) Create another label beneath and set the text to the NSMutableString text. Increase the number of lines if necessary. Make sure the text in this label is centered
 
 
 */


#import <UIKit/UIKit.h>

@interface BookViewController : UIViewController
{
    UILabel *bookTitle;         // books title
    UILabel *bookAuthorLabel;   // author label
    UILabel *bookAuthorText;    // books author
    UILabel *bookPubLabel;      // published label
    UILabel *bookPubText;       // published Text
    UILabel *bookSummaryLabel;  // summary label
    UILabel *bookSummaryText;   // summary text
    
    UILabel *bookTopicsLabel;
    UILabel *bookTopicsText;
    
}
@end
