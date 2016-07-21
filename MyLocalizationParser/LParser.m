//
//  LParser.m
//  MyLocalizationParser
//
//  Created by Masood on 14/06/16.
//  Copyright © 2016 Masood. All rights reserved.
//

#import "LParser.h"

@implementation LParser

+(NSDictionary*)parseJson:(NSString*)fileName{
    NSError *error = nil;
    NSString *filePath = [[NSBundle mainBundle] pathForResource:fileName
                                                         ofType:@"json"];
    NSLog(@"filename: %@, filepath: %@", fileName, filePath);
    
    NSData *dataFromFile = [NSData dataWithContentsOfFile:filePath];
    NSDictionary *data = [NSJSONSerialization JSONObjectWithData:dataFromFile
                                                         options:kNilOptions
                                                           error:&error];

    if (error != nil) {
        NSLog(@"Error: was not able to load json file: %@.",fileName);
    }
    return data;
}

+(void)getiOSLocalizableStirngs{
    NSDictionary *strings = [self parseJson:@"strings"];
    NSLog(@"strings: %@", strings);
    NSArray *stringsArray = [strings[@"root"] valueForKey:@"string"];
    NSMutableString *mString = [NSMutableString new];
    for(NSDictionary *stringDict in stringsArray){
        NSString *str = [NSString stringWithFormat:@"\"%@\" = \"%@\";", stringDict[@"-name"], stringDict[@"#text"]];
        [mString appendString:[NSString stringWithFormat:@"%@\n", str]];
    }
    NSLog(@"mstr: %@", mString);
}
@end
