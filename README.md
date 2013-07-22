# NSTimeIntervalFormatter [![Build Status](https://travis-ci.org/RLovelett/NSTimeIntervalFormatter.png?branch=master)](https://travis-ci.org/RLovelett/NSTimeIntervalFormatter)

Provide similar functionality as NSDateFormatter for NSTimeInterval.

# Example

```
NSDate* startTime = [NSDate date];
sleep(10);
NSDate* now = [NSDate date];
NSTimeInterval interval = [now timeIntervalSinceDate: startTime];
NSTimeIntervalFormatter* formatter = [[NSTimeIntervalFormatter alloc] init];
[formatter setFormat:@"MM ss.SS"];
NSString* formatted = [formatter stringFromInterval:interval];

NSLog(formatted); // Console shows "00 13.64"
```
