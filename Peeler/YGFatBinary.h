//
//  YGFatBinary.h
//  Peeler
//
//  Created by HEINRICH Yannick on 24/05/13.
//  Copyright (c) 2013 YaGeek's Company. All rights reserved.
//
#import <mach-o/fat.h>

@interface YGFatBinary : NSObject {

    struct fat_header _header;
    struct fat_arch _arches[4];
    uint32_t _archesNumber;
}

- (id) initWithData:(NSData *) data;
+ (BOOL) isFatBinary:(NSData *) data;

@property(readonly,nonatomic) NSDictionary * infosDict;
@end
