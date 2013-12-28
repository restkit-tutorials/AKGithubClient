//
//  MappingProvider.h
//  AKGithubClient
//
//  Created by Alex Kurkin on 12/26/13.
//  Copyright (c) 2013 Brilliant Consulting Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

@class RKObjectMapping;

@interface MappingProvider : NSObject

+ (RKObjectMapping *) userMapping;
+ (RKObjectMapping *) repositoryMapping;

@end
