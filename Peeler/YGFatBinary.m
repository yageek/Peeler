//
//  YGFatBinary.m
//  Peeler
//
//  Created by HEINRICH Yannick on 24/05/13.
//  Copyright (c) 2013 YaGeek's Company. All rights reserved.
//

#import <mach-o/fat.h>
#import "YGFatBinary.h"

@implementation YGFatBinary

- (id) initWithData:(NSData *) data
{
    if(![YGFatBinary isFatBinary:data])
    {
        [self release];
        return nil;
        
    }
    
    if(self = [super init])
    {
        [data getBytes:&_header length:sizeof(struct fat_header)];
        
        _archesNumber = CFSwapInt32BigToHost(_header.nfat_arch);
        
        for(uint32_t index = 0; index < _archesNumber; ++index)
        {
            NSRange range = NSMakeRange(sizeof(struct fat_header) + index*sizeof(struct fat_arch), sizeof(struct fat_arch));
            struct fat_arch arch;
            [data getBytes:&arch range:range];
            _arches[index] = arch;
        }
        
    }
    return self;
}

+ (BOOL) isFatBinary:(NSData *) data
{
    uint32_t magicNumber;
    [data getBytes:&magicNumber length:sizeof(uint32_t)];
    return CFSwapInt32HostToBig(magicNumber) == FAT_MAGIC;
}

- (NSDictionary*) infosDict
{
    
    return nil;
}
@end
