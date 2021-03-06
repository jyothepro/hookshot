//
//  ViewController.m
//  HookshotDemo
//
//  Created by Robby Walker on 1/15/13.
//  Copyright (c) 2013 Cue. All rights reserved.
//

#import "ViewController.h"
#import "hookshot.h"

@implementation ViewController

@synthesize webView = _webView;

- (void)viewDidLoad;
{
    [super viewDidLoad];
    _webView.delegate = self;
    [_webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.cueup.com"]]];
}

- (void)dealloc;
{
    [super dealloc];
    [_webView release];
}

- (void)webViewDidStartLoad:(UIWebView *)webView;
{
    HOOKSHOT_CHECKPOINT(@"didStartLoad");
}

- (void)webViewDidFinishLoad:(UIWebView *)webView;
{
    HOOKSHOT_CHECKPOINT(@"didFinishLoad");
}

@end
