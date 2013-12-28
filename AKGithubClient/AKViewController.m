//
//  AKViewController.m
//  AKGithubClient
//
//  Created by Alex Kurkin on 12/25/13.
//  Copyright (c) 2013 Brilliant Consulting Inc. All rights reserved.
//

#import "AKViewController.h"
#import "UserManager.h"
#import "User.h"
#import <QuartzCore/QuartzCore.h>

@interface AKViewController ()

@property (weak, nonatomic) IBOutlet UILabel *welcomeLabel;
@property (weak, nonatomic) IBOutlet UIView *informationView;
@property (weak, nonatomic) IBOutlet UIImageView *avatarImageView;
@property (weak, nonatomic) IBOutlet UILabel *loginLabel;
@property (weak, nonatomic) IBOutlet UILabel *publicReposCountLabel;
@property (weak, nonatomic) IBOutlet UILabel *publicGistsCountLabel;

@property (nonatomic, strong) User *authenticatedUser;

@end

@implementation AKViewController

- (void)setAuthenticatedUser:(User *)authenticatedUser {
    if (_authenticatedUser != authenticatedUser) {
        _authenticatedUser = authenticatedUser;
        self.welcomeLabel.text = [NSString stringWithFormat:@"Welcome, %@!", authenticatedUser.name];
        
        self.loginLabel.text = authenticatedUser.login;
        self.publicGistsCountLabel.text = [NSString stringWithFormat:@"%@", authenticatedUser.publicGistsCount];
        self.publicReposCountLabel.text = [NSString stringWithFormat:@"%@", authenticatedUser.publicReposCount];

        NSURLRequest *avatarUrlRequest = [NSURLRequest requestWithURL:[NSURL URLWithString:authenticatedUser.avatarUrl]];
        AFImageRequestOperation *requestOperation = [AFImageRequestOperation imageRequestOperationWithRequest:avatarUrlRequest success:^(UIImage *image) {
            self.avatarImageView.image = image;
        }];
        [requestOperation start];
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self styleView];

    [[UserManager sharedManager] loadAuthenticatedUser:^(User *user) {
        self.authenticatedUser = user;
    } failure:^(RKObjectRequestOperation *operation, NSError *error) {
        NSLog(@"error occured: %@", error);
    }];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

#pragma mark - Helpers

- (void) styleView {
    self.informationView.layer.borderWidth = 1.0;
    self.informationView.layer.borderColor = [UIColor colorWithWhite:0.0 alpha:0.2].CGColor;
    self.avatarImageView.layer.cornerRadius = 20.0;
    self.avatarImageView.layer.masksToBounds = YES;
}

@end
