//
//  PeelerTests.m
//  PeelerTests
//
//  Created by HEINRICH Yannick on 24/05/13.
//  Copyright (c) 2013 YaGeek's Company. All rights reserved.
//

#import "PeelerTests.h"
#import "YGExecutable.h"

@implementation PeelerTests

- (void)setUp
{
    [super setUp];
    
    // Set-up code here.
}

- (void)tearDown
{
    // Tear-down code here.
    
    [super tearDown];
}


- (void) testAllocation
{

    YGExecutable * exe = [[YGExecutable alloc] initWithData:nil];
    STAssertNil(exe, @"Executable allocation should be nil when passing nil");
}
@end
