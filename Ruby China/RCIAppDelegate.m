//
//  RCIAppDelegate.m
//  Ruby China
//
//  Created by 来 诺 on 3/4/12.
//  Copyright (c) 2012 lainuo.info. All rights reserved.
//

#import "RCIAppDelegate.h"
#import <RestKit/RestKit.h>
#import "RCIUser.h"
#import "RCITopic.h"

/*#ifdef DEBUG
 static NSString * API_ENDPOINT = @"http://localhost:3000";
 #else*/
static NSString * API_ENDPOINT = @"http://ruby-china.org";
//#endif

@implementation RCIAppDelegate

@synthesize window = _window;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    [self initRestKit];
    return YES;
}
							
- (void)initRestKit {
    RKObjectManager *manager = [RKObjectManager objectManagerWithBaseURL:API_ENDPOINT];
//    
//    RKObjectMapping *userMapping = [RKObjectMapping mappingForClass:[RCIUser class]];
//    [userMapping mapAttributes:@"login", @"name", @"location", @"bio", @"tagline", @"website", nil];
//    [userMapping mapKeyPathsToAttributes:@"github_url", @"githubUrl",
//     @"gravatar_hash", @"gravatarHash",
//     nil];
//    [manager.mappingProvider addObjectMapping:userMapping];
    
    RKObjectMapping *topicMapping = [RKObjectMapping mappingForClass:[RCITopic class]];
    [topicMapping mapKeyPathsToAttributes: @"title", @"title",
     @"replies_count", @"repliesCount",
     @"created_at", @"createdDate",
     @"updated_at", @"updatedDate",
     @"node_name", @"nodeName",
     nil];
//    [topicMapping mapRelationship:@"user" withMapping:userMapping];
    
    [manager.mappingProvider addObjectMapping:topicMapping];
}

@end
