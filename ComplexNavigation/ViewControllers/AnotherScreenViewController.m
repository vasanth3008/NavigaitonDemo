//
//  AnotherScreenViewController.m
//  ComplexNavigation
//

#import "AnotherScreenViewController.h"
#import "LoginViewController.h"

@interface AnotherScreenViewController()

@end

@implementation AnotherScreenViewController

-(void)viewDidLoad {
    [super viewDidLoad];
}

-(void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}
-(void)viewDidAppear:(BOOL)animated
{
    NSMutableArray *viewControllers=[[NSMutableArray alloc]init];
    
    for (UIViewController *Controler in self.navigationController.viewControllers) {
        if(![Controler isKindOfClass:[LoginViewController class]])
        {
            [viewControllers addObject:Controler];
        }
    }
    
    self.navigationController.viewControllers=viewControllers;
}
@end
