//
//  RCITopic.h
//  Ruby China
//
//  Created by 来 诺 on 3/4/12.
//  Copyright (c) 2012 lainuo.info. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RCIUser.h"

@interface RCITopic : NSObject

@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSNumber *repliesCount;
@property (nonatomic, strong) NSDate *createdDate;
@property (nonatomic, strong) NSDate *updatedDate;
@property (nonatomic, strong) NSString *nodeName;
//@property (nonatomic, strong) RCIUser *user;

@end
