//
//  User.h
//  AKGithubClient
//
//  Created by Alex Kurkin on 12/26/13.
//  Copyright (c) 2013 Brilliant Consulting Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface User : NSObject

@property (nonatomic, strong) NSString *login;
@property (nonatomic, strong) NSNumber *userId;
@property (nonatomic, strong) NSString *avatarUrl;
@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSNumber *publicReposCount;
@property (nonatomic, strong) NSNumber *publicGistsCount;

@end
