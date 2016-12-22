//
//  LoginViewController.m
//  mingjieloan
//
//  Created by vicki on 2016/12/20.
//  Copyright © 2016年 vicki. All rights reserved.
//没写完


#import "LoginViewController.h"
#import "ForgetViewController.h"

@interface LoginViewController ()

@end

@implementation LoginViewController


- (void)viewDidLoad {
    [super viewDidLoad];
     self.navigationItem.title = @"登录";
    self.view.backgroundColor = [UIColor whiteColor];
    [self.navigationController.navigationBar setTitleTextAttributes:@{ NSForegroundColorAttributeName:[UIColor whiteColor]}];

    [self createView];

    // Do any additional setup after loading the view.
}

- (void)createView {
    
    
    UILabel *label1 = [[UILabel alloc] initWithFrame:CGRectMake(21*FitWidth,84*FitHeight, 373*FitWidth, 45*FitHeight)];
    UILabel *label2 = [[UILabel alloc] initWithFrame:CGRectMake(21*FitWidth, label1.bottom + 10*FitHeight, label1.width, label1.height)];
    label1.layer.masksToBounds = label2.layer.masksToBounds = YES;
    label1.layer.cornerRadius = label2.layer.cornerRadius = 3;
//    label2.layer.borderWidth = label1.layer.borderWidth = 1;
//    label2.layer.borderColor = label1.layer.borderColor = kBackColor.CGColor;
    [self.view addSubview:label1];
    [self.view addSubview:label2];
    
    UIImageView *imageView1 = [[UIImageView alloc] initWithFrame:CGRectMake(label1.left + 20*FitWidth, label1.top + 6.5*FitHeight, 14*FitWidth, 17*FitHeight)];
    imageView1.image = [UIImage imageNamed:@"shoujihao"];
    [self.view addSubview:imageView1];
    UIImageView *imageView2 = [[UIImageView alloc] initWithFrame:CGRectMake(label2.left + 20*FitWidth, label2.top + 6.5*FitHeight, 14*FitWidth, 17*FitHeight)];
    imageView2.image = [UIImage imageNamed:@"mima"];
    [self.view addSubview:imageView2];
    
    self.nameField = [[UITextField alloc] initWithFrame:CGRectMake(label1.left + 50*FitWidth, label1.top + 5*FitHeight, self.view.width - 160*FitWidth, 20*FitHeight)];
    self.nameField.placeholder = @"请填写手机号码";
    self.nameField.borderStyle = UITextBorderStyleNone;
    [self.view addSubview:self.nameField];
    
    self.passwordField = [[UITextField alloc] initWithFrame:CGRectMake(label2.left + 50*FitWidth, label2.top + 5*FitHeight, self.nameField.width, self.nameField.height)];
    self.passwordField.borderStyle = UITextBorderStyleNone;
    self.passwordField.placeholder = @"请填写密码";
    self.passwordField.secureTextEntry = YES;
    [self.view addSubview:self.passwordField];
    
    self.forgetButton = [UIButton buttonWithType:UIButtonTypeCustom];
    self.forgetButton.frame = CGRectMake(312 *FitWidth, label2.bottom, 100*FitWidth, self.passwordField.height);
    [self.forgetButton addTarget:self action:@selector(forgetButton:) forControlEvents:UIControlEventTouchUpInside];
    self.forgetButton.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
    [self.forgetButton setTitle:@"忘记密码？" forState:UIControlStateNormal];
    [self.forgetButton setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
    [self.view addSubview:self.forgetButton];
    
    self.longinButton = [UIButton buttonWithType:UIButtonTypeCustom];
    self.longinButton.frame = CGRectMake(label1.left, self.forgetButton.bottom+20*FitHeight, label1.width, 45*FitHeight);
    [self.longinButton addTarget:self action:@selector(loginButton:) forControlEvents:UIControlEventTouchUpInside];
    self.longinButton.layer.masksToBounds = YES;
    self.longinButton.layer.borderWidth = 1;
    self.longinButton.layer.cornerRadius = 4;
    self.longinButton.layer.borderColor = [XXColor borderAllColor].CGColor;

    [self.longinButton setTitle:@"登录" forState:UIControlStateNormal];
    [self.longinButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    self.longinButton.titleLabel.font = [UIFont systemFontOfSize:RealValue(18)];
    self.longinButton.backgroundColor = [XXColor btnGoldenColor];
    [self.view addSubview:self.longinButton];
    
    
    self.registerButton = [UIButton buttonWithType:UIButtonTypeCustom];
    self.registerButton.frame = CGRectMake(self.longinButton.left, self.longinButton.bottom+15*FitHeight, self.longinButton.width, 45*FitHeight);
    [self.registerButton addTarget:self action:@selector(registerButton:) forControlEvents:UIControlEventTouchUpInside];
    self.registerButton.layer.masksToBounds = YES;
    self.registerButton.layer.cornerRadius = 2;
    [self.registerButton setTitle:@"立即注册" forState:UIControlStateNormal];
    [self.registerButton setTitleColor:
     [XXColor btnGoldenColor] forState:UIControlStateNormal];
    self.registerButton.titleLabel.font = [UIFont systemFontOfSize:RealValue(18)];
     self.registerButton.layer.borderWidth = 1;
    self.registerButton.layer.cornerRadius = 4;
    self.registerButton.backgroundColor = [UIColor whiteColor];
    self.registerButton.layer.borderColor =[XXColor borderAllColor].CGColor;
    [self.view addSubview:self.registerButton];
    
    self.forgetButton.titleLabel.font = self.registerButton.titleLabel.font = [UIFont systemFontOfSize:RealValue(14)];
}

- (void)forgetButton:(UIButton *)button {
    ForgetViewController *forget = [[ForgetViewController alloc] init];
    [self.navigationController pushViewController:forget animated:YES];
}

- (void)loginButton:(UIButton *)button {
    
       
}

- (void)registerButton:(UIButton *)button {
    RegisterViewController *regi = [[RegisterViewController alloc] init];
    [self.navigationController pushViewController:regi animated:YES];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
