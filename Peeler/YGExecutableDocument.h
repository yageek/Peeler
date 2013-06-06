//
//  YGExecutable.h
//  Peeler
//
//  Created by HEINRICH Yannick on 24/05/13.
//  Copyright (c) 2013 YaGeek's Company. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "YGExecutable.h"
    
@interface YGExecutableDocument : NSDocument{
    NSString * _name;
    YGExecutable * _executable;
}

- (IBAction)openExecutableTriggered:(id)sender;

@end
