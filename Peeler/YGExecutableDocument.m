//
//  YGExecutable.m
//  Peeler
//
//  Created by HEINRICH Yannick on 24/05/13.
//  Copyright (c) 2013 YaGeek's Company. All rights reserved.
//

#import "YGExecutableDocument.h"

@implementation YGExecutableDocument

- (id) init
{
    if(self = [super init])
    {
        _name = @"Untitled";
        _executable = nil;
    }

    return self;
}

- (NSString*) windowNibName
{
    return @"YGExecutableDocument";
}

- (NSData *)dataOfType:(NSString *)typeName error:(NSError **)outError
{
    // Insert code here to write your document to data of the specified type. If outError != NULL, ensure that you create and set an appropriate error when returning nil.
    // You can also choose to override -fileWrapperOfType:error:, -writeToURL:ofType:error:, or -writeToURL:ofType:forSaveOperation:originalContentsURL:error: instead.
    NSException *exception = [NSException exceptionWithName:@"UnimplementedMethod" reason:[NSString stringWithFormat:@"%@ is unimplemented", NSStringFromSelector(_cmd)] userInfo:nil];
    @throw exception;
    return nil;
}

- (BOOL)readFromData:(NSData *)data ofType:(NSString *)typeName error:(NSError **)outError
{
    // Insert code here to read your document from the given data of the specified type. If outError != NULL, ensure that you create and set an appropriate error when returning NO.
    // You can also choose to override -readFromFileWrapper:ofType:error: or -readFromURL:ofType:error: instead.
    // If you override either of these, you should also override -isEntireFileLoaded to return NO if the contents are lazily loaded.
    NSException *exception = [NSException exceptionWithName:@"UnimplementedMethod" reason:[NSString stringWithFormat:@"%@ is unimplemented", NSStringFromSelector(_cmd)] userInfo:nil];
    @throw exception;
    return YES;
}
- (IBAction)openExecutableTriggered:(id)sender
{

    NSOpenPanel * oPanel = [NSOpenPanel openPanel];
    oPanel.canChooseFiles = YES;
    oPanel.canChooseDirectories = NO;
    oPanel.allowsMultipleSelection = NO;
    oPanel.showsHiddenFiles = YES;
    oPanel.treatsFilePackagesAsDirectories = YES;
   
    [oPanel beginSheetModalForWindow:self.windowForSheet completionHandler:^(NSInteger result){

        if(result == NSFileHandlingPanelOKButton)
        {
            NSString * path = [[oPanel URL] path];
            NSLog(@"Selected path : %@", path);

            _executable = [[YGExecutable alloc] initWithData:[NSData dataWithContentsOfFile:path]];
            if(!_executable)
            {
                [[NSAlert alertWithMessageText:@"File is not an Executable" defaultButton:@"OK" alternateButton:nil otherButton:nil informativeTextWithFormat:@""] runModal];
            }
            
            
        }
        

    }];
}
@end
