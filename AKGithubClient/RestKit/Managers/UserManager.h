//
//  UserManager.h
//  AKGithubClient
//
//  Created by Alex Kurkin on 12/26/13.
//  Copyright (c) 2013 Brilliant Consulting Inc. All rights reserved.
//

#import "AKObjectManager.h"

@class User;

@interface UserManager : AKObjectManager

- (void) loadAuthenticatedUser:(void (^)(User *user))success failure:(void (^)(RKObjectRequestOperation *operation, NSError *error))failure;

@end
