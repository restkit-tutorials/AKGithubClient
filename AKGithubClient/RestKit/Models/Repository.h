//
//  Repository.h
//  AKGithubClient
//
//  Created by Alex Kurkin on 12/26/13.
//  Copyright (c) 2013 Brilliant Consulting Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

@class User;

@interface Repository : NSObject

@property (nonatomic, strong) NSNumber *repositoryId;
@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *fullName;
@property (nonatomic, strong) NSString *description;
@property (nonatomic, strong) NSString *apiUrl;
@property (nonatomic, strong) NSNumber *stargazersCount;
@property (nonatomic, strong) NSNumber *watchersCount;
@property (nonatomic, strong) NSNumber *isPrivateRepository;
@property (nonatomic, strong) NSNumber *isForkedRepository;
@property (nonatomic, strong) User *owner;

@end
