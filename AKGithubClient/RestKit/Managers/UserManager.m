//
//  UserManager.m
//  AKGithubClient
//
//  Created by Alex Kurkin on 12/26/13.
//  Copyright (c) 2013 Brilliant Consulting Inc. All rights reserved.
//

#import "UserManager.h"
#import <RestKit/RestKit.h>
#import "MappingProvider.h"
#import "User.h"

@implementation UserManager

- (void) loadAuthenticatedUser:(void (^)(User *))success failure:(void (^)(RKObjectRequestOperation *, NSError *))failure {
    [self getObjectsAtPath:@"/user" parameters:nil success:^(RKObjectRequestOperation *operation, RKMappingResult *mappingResult) {
        if (success) {
            User *currentUser = (User *)[mappingResult.array firstObject];
            success(currentUser);
        }
    } failure:^(RKObjectRequestOperation *operation, NSError *error) {
        if (failure) {
            failure(operation, error);
        }
    }];
}

#pragma mark - Setup Helpers

- (void) setupResponseDescriptors {
    [super setupResponseDescriptors];

    RKResponseDescriptor *authenticatedUserResponseDescriptors = [RKResponseDescriptor responseDescriptorWithMapping:[MappingProvider userMapping] method:RKRequestMethodGET pathPattern:@"/user" keyPath:nil statusCodes:RKStatusCodeIndexSetForClass(RKStatusCodeClassSuccessful)];
    [self addResponseDescriptor:authenticatedUserResponseDescriptors];
}

@end