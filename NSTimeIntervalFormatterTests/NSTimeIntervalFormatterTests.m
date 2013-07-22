//
//  NSTimeIntervalFormatterTests.m
//  NSTimeIntervalFormatterTests
//
//  Created by Ryan Lovelett on 7/19/13.
//  Copyright (c) 2013 Ryan Lovelett. All rights reserved.
//

#import "NSTimeIntervalFormatterTests.h"
#import "NSTimeIntervalFormatter.h"

@implementation NSTimeIntervalFormatterTests

- (void)setUp
{
    [super setUp];
    
    // Set-up code here.
    formatsDictionary = [NSMutableDictionary dictionaryWithCapacity:16];

    // Format combos
    [formatsDictionary setObject:@"9.1234" forKey:@"s.SSSS"];
    [formatsDictionary setObject:@"09.1234" forKey:@"ss.SSSS"];
    [formatsDictionary setObject:@"3:09.1234" forKey:@"M:ss.SSSS"];
    [formatsDictionary setObject:@"03:09.1234" forKey:@"MM:ss.SSSS"];
    [formatsDictionary setObject:@"10:03:09.1234" forKey:@"H:MM:ss.SSSS"];
    [formatsDictionary setObject:@"10:03:09.1234" forKey:@"HH:MM:ss.SSSS"];

    // Just hours
    [formatsDictionary setObject:@"10" forKey:@"HH"];
    [formatsDictionary setObject:@"10" forKey:@"H"];

    // Just minutes
    [formatsDictionary setObject:@"3" forKey:@"M"];
    [formatsDictionary setObject:@"03" forKey:@"MM"];

    // Just seconds
    [formatsDictionary setObject:@"9" forKey:@"s"];
    [formatsDictionary setObject:@"09" forKey:@"ss"];

    // Just milliseconds
    [formatsDictionary setObject:@"1" forKey:@"S"];
    [formatsDictionary setObject:@"12" forKey:@"SS"];
    [formatsDictionary setObject:@"123" forKey:@"SSS"];
    [formatsDictionary setObject:@"1234" forKey:@"SSSS"];

    testInterval = 36189.12345;
}

- (void)tearDown
{
    // Tear-down code here.
    
    [super tearDown];
}

- (void)testStringFromInterval
{
    STFail(@"Unit tests are not implemented yet in NSTimeIntervalFormatterTests");
}

- (void)testSetFormat
{
    NSTimeIntervalFormatter* formatter = [[NSTimeIntervalFormatter alloc] init];
    for(NSString* format in formatsDictionary) {
        NSString* expectedResult = [formatsDictionary objectForKey:format];
        [formatter setFormat:format];
        NSString* actualResult = [formatter stringFromInterval:testInterval];
        Boolean matches = [actualResult isEqualToString: expectedResult];
        STAssertTrue(matches, @"[%1$@] Expected %2$@ to equal %3$@.", format, expectedResult, actualResult);
    }
}

@end
