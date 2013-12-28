//
//  Star.h
//  AKGithubClient
//
//  Created by Alex Kurkin on 12/26/13.
//  Copyright (c) 2013 Brilliant Consulting Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Star : NSObject

@property (nonatomic, strong) NSNumber *starId;
@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *description;
@property (nonatomic, strong) NSString *apiUrl;
@property (nonatomic, strong) NSString *starsCount;
@property (nonatomic, strong) NSNumber *privateRepository;
@property (nonatomic, strong) NSNumber *forkRepository;

@end
