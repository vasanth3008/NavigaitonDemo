//
//  MainViewController.m
//  ComplexNavigation
//

#import "MainViewController.h"
#import "LoginViewController.h"
#import "AnotherScreenViewController.h"


@interface MainViewController()

@end

@implementation MainViewController

-(void)viewDidLoad {
    [super viewDidLoad];
}

-(void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

-(void)viewDidAppear:(BOOL)animated
{
    
}

-(void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];

    NSUserDefaults *prefs = [NSUserDefaults standardUserDefaults];

    if ([prefs objectForKey:@"LOG_IN_NEEDED"] == Nil) {
        /////////////////////////
        // opening the login screen this way works always OK
        /////////////////////////

        // show the log in screen if needed
        UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle: nil];
        LoginViewController *vc = [storyboard instantiateViewControllerWithIdentifier:@"LoginScreen"];
        [self.navigationController pushViewController:vc animated:NO];
    }
//    else if ([prefs objectForKey:@"SHOW_ANOTHER_SCREEN"] == Nil) {
//        /////////////////////////
//        // opening another screen after we return from the login screen makes a mess
//        // The view controller thinks something was pushed, the back button is visible, but this (the `Main`) screen is
//        // visible instead of the `Another` screen. Tapping the back button pops the main screen and the app is black.
//        /////////////////////////
//
//        // show another screen if needed and set its flag, that is should not show in the future
//        [prefs setObject:@"1" forKey:@"SHOW_ANOTHER_SCREEN"];
//        [prefs synchronize];
//
//        UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle: nil];
//        AnotherScreenViewController *vc = [storyboard instantiateViewControllerWithIdentifier:@"AnotherScreen"];
//
//        [self.navigationController pushViewController:vc animated:NO];
//        
//        
//    }
}

@end
