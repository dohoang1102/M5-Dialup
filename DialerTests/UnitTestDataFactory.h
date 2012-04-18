//
//  UnitTestDataFactory.h
//  Dialer
//
//  Created by William Richardson on 4/16/12.
//  Copyright (c) 2012 CodeSpan Technologies. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface UnitTestDataFactory : NSObject

+ (NSDictionary *) loadContactEntries;

+ (NSDictionary *) createContactEntries;

+ (NSDictionary *) createUserA;

+ (NSDictionary *) createUserB;

@end
