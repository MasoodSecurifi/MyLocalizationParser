//
//  Parser.m
//  LocalizationParser
//
//  Created by Masood on 14/06/16.
//  Copyright © 2016 Masood. All rights reserved.
//

#import "Parser.h"

@implementation Parser

+(NSDictionary*)parseJson:(NSString*)fileName{
    NSError *error = nil;
    NSString *filePath = [[NSBundle mainBundle] pathForResource:fileName
                                                         ofType:@"json"];
    NSLog(@"filename: %@, filepath: %@", fileName, filePath);
    filePath = [[NSBundle mainBundle] pathForResource:@"scene_names"
                                                         ofType:@"txt"];
    NSLog(@"filename: %@, filepath: %@", @"scene_names", filePath);
    
//    NSData *dataFromFile = [NSData dataWithContentsOfFile:filePath];
//    NSDictionary *data = [NSJSONSerialization JSONObjectWithData:dataFromFile
//                                                         options:kNilOptions
//                                                           error:&error];
//    
//    if (error != nil) {
//        NSLog(@"Error: was not able to load json file: %@.",fileName);
//    }
    return @"";
}

+(void)getiOSLocalizableStirngs{
    NSDictionary *strings = [self parseJson:@"strings"];
//    NSLog(@"strings: %@", strings);
//    NSArray *stringsArray = [strings[@"root"] valueForKey:@"string"];
//    for(NSDictionary *stringDict in stringsArray){
//        NSString *str = [NSString stringWithFormat:@"\"%@\" = \"%@\";", stringDict[@"-name"], stringDict[@"#text"]];
//        NSLog(@"%@", str);
//    }
}
@end
