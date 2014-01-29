//
//  LoginViewController.m
//  ComplexNavigation
//

#import "LoginViewController.h"
#import "AnotherScreenViewController.h"

@interface LoginViewController()

@end

@implementation LoginViewController

-(void)viewDidLoad {
    [super viewDidLoad];

    // set successful login flag.
    // set it always just for demo purposes
    NSUserDefaults *prefs = [NSUserDefaults standardUserDefaults];
    [prefs setObject:@"1" forKey:@"LOG_IN_NEEDED"];
    [prefs synchronize];
}

-(void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

-(IBAction)onClickLogin:(id)sender {
    // go back
    //[self.navigationController popViewControllerAnimated:YES];
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle: nil];
    AnotherScreenViewController *vc = [storyboard instantiateViewControllerWithIdentifier:@"AnotherScreen"];
    
    NSUserDefaults *prefs = [NSUserDefaults standardUserDefaults];
    
    [prefs setObject:@"1" forKey:@"SHOW_ANOTHER_SCREEN"];
    [prefs synchronize];
    
    //Add Another screen into the navigation stack
    NSMutableArray *viewController=[[NSMutableArray alloc]initWithArray:self.navigationController.viewControllers];
    
    [viewController insertObject:vc atIndex:viewController.count-1];
    
    [self.navigationController setViewControllers:viewController];
    
    //When pop, It will go the another screen instead of Main
    [self.navigationController popViewControllerAnimated:YES];
    
    
    //If u want to do this stuff in one place mean u can use delegate in MainController and call it form here to do this stuff.

    //    [self.navigationController pushViewController:vc animated:YES];
    
}

@end
