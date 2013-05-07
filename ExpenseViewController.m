//
//  ExpenseViewController.m
//  MyExpenseKeeper
//
//  Created by Ho Clarence on 13年5月6日.
//  Copyright (c) 2013年 Ho Clarence. All rights reserved.
//

#import "ExpenseViewController.h"

@implementation ExpenseViewController

@synthesize APP_URL;

- (void)loadView
{
    
    // URL for web application
    APP_URL = @"https://clarenceho-my-expense-keeper.jit.su/#/";
    
    CGRect screenFrame = [[UIScreen mainScreen] applicationFrame];
    UIWebView *wv = [[UIWebView alloc] initWithFrame:screenFrame];
    
    [wv setScalesPageToFit:YES];
    
    // Set the web view to load the content from web site
    NSURL *url = [[NSURL alloc] initWithString:APP_URL];
    
    // Construct a request object
    NSURLRequest *req = [NSURLRequest requestWithURL:url];
    
    // Load the request into the web view
    [wv loadRequest:req];
    
    [self setView:wv];
}

@end
