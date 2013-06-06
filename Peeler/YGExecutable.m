//
//  YGExecutable.m
//  Peeler
//
//  Created by HEINRICH Yannick on 24/05/13.
//  Copyright (c) 2013 YaGeek's Company. All rights reserved.
//

#import "YGExecutable.h"
#import "YGFatBinary.h"

static YGExecutable * _executablePlaceHolder;

@implementation YGExecutable

+ (void) initialize
{
    if( self == [YGExecutable class])
    {
        _executablePlaceHolder = [self alloc];
    }

}

+ (id) allocWithZone:(NSZone * )zone
{
    if(self == [YGExecutable class])
    {
            if(!_executablePlaceHolder)
            {
               _executablePlaceHolder = [super allocWithZone:zone];
            }

        return _executablePlaceHolder;

    }
    return [super allocWithZone:zone];
}


- (id) init {
    if(self = [super init])
    {
        
    }
    return self;
}
- (id) initWithData:(NSData *) data
{
      
        id executable = nil;
    
        YGFatBinary * fatBinary;
        if((fatBinary = [[YGFatBinary alloc] initWithData:data]))
           {
               
               
               
               [fatBinary release];
           }
//        else if(){
//            
//        }
//        else if (){
//            
//        }
//           
//        if([YGFatBinary isFatBinary:data])
//        {
//            YGFatBinary * fatBinary = [[YGFatBinary alloc] initWithData:data];
//            
//            //TODO:Get MachO Version and set it to executable
//            
//            
//            executable = fatBinary;
//        }
////        executable = [[YGFatBinary alloc] initWithData:data];
//        if(!executable){
//            [self release];
//            return nil;
//        } 
//        
    return executable;
    
}
@end
