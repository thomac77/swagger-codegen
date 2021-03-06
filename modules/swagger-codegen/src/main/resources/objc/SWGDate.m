#import "SWGDate.h"

@implementation SWGDate

@synthesize date = _date;

- (id) initWithValues:(NSString*)input {
    if([input isKindOfClass:[NSString class]]){
        NSDateFormatter* df = [NSDateFormatter new];
        NSLocale *locale = [[NSLocale new]                        
                            initWithLocaleIdentifier:@"en_US_POSIX"];
        [df setLocale:locale];
        [df setDateFormat:@"yyyy-MM-dd'T'HH:mm:ss.SSSxxx"];

        _date = [df dateFromString:input];
    }
    else if([input isKindOfClass:[NSNumber class]]) {
        NSTimeInterval interval = [input doubleValue];
        _date = [[NSDate alloc] initWithTimeIntervalSince1970:interval];        
    }
    return self;
}

- (id) initWithDate:(NSDate*)date {
    _date = date;
    return self;
}

-(NSString*) toString {
    NSDateFormatter* df = [NSDateFormatter new];
    NSLocale *locale = [[NSLocale new]                        
                        initWithLocaleIdentifier:@"en_US_POSIX"];
    [df setLocale:locale];
    [df setDateFormat:@"yyyy-MM-dd'T'HH:mm:ss.SSSxxx"];
    
    return [df stringFromDate:_date];
}

@end