//
//  MappingProvider.m
//  AKGithubClient
//
//  Created by Alex Kurkin on 12/26/13.
//  Copyright (c) 2013 Brilliant Consulting Inc. All rights reserved.
//

#import "MappingProvider.h"
#import <RestKit/RestKit.h>
#import "User.h"
#import "Repository.h"

@implementation MappingProvider

+ (RKObjectMapping *)userMapping {
    RKObjectMapping *mapping = [RKObjectMapping mappingForClass:[User class]];
    NSDictionary *mappingDictionary = @{@"login": @"login",
                                        @"id": @"userId",
                                        @"avatar_url": @"avatarUrl",
                                        @"name": @"name",
                                        @"public_repos": @"publicReposCount",
                                        @"public_gists": @"publicGistsCount"
                                        };

    [mapping addAttributeMappingsFromDictionary:mappingDictionary];

    return mapping;
}

+ (RKObjectMapping *)repositoryMapping {
    RKObjectMapping *mapping = [RKObjectMapping mappingForClass:[Repository class]];
    NSDictionary *mappingDictionary = @{@"id": @"repositoryId",
                                        @"name": @"",
                                        @"full_name": @"fullName",
                                        @"description": @"description",
                                        @"url": @"apiUrl",
                                        @"stargazers_count": @"stargazersCount",
                                        @"watchers_count": @"watchersCount",
                                        @"private": @"isPrivateRepository",
                                        @"fork": @"isForkedRepository"};

    [mapping addAttributeMappingsFromDictionary:mappingDictionary];
    [mapping addRelationshipMappingWithSourceKeyPath:@"owner" mapping:[self userMapping]];

    return mapping;
}

@end
