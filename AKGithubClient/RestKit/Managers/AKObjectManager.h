//
//  AKObjectManager.h
//  AKGithubClient
//
//  Created by Alex Kurkin on 12/26/13.
//  Copyright (c) 2013 Brilliant Consulting Inc. All rights reserved.
//

#import "RKObjectManager.h"

@interface AKObjectManager : RKObjectManager

+ (instancetype) sharedManager;

- (void) setupRequestDescriptors;
- (void) setupResponseDescriptors;

@end
