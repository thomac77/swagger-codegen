#import <Foundation/Foundation.h>
#import "SWGObject.h"

@interface SWGDate : SWGObject {
@private
    NSDate *_date;
}
@property(nonatomic, readonly) NSDate* date;

- (id) initWithValues: (NSString*)input;
- (id) initWithDate: (NSDate*)date;
-(NSString*) toString;
@end