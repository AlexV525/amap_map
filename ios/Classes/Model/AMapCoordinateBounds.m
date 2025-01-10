#import "AMapCoordinateBounds.h"
#import "AMapConvertUtil.h"

@implementation AMapCoordinateBounds

- (NSDictionary *)toDictionary {
    NSMutableArray *array = [NSMutableArray arrayWithCapacity:2];
    [array addObject:[AMapConvertUtil jsonArrayFromCoordinate:self.southwest]];
    [array addObject:[AMapConvertUtil jsonArrayFromCoordinate:self.northeast]];
    return [array copy];
}

- (NSString *)description {
    return [NSString stringWithFormat:@"CoordinateBounds(southwest:%@, northeast:%@)",[AMapConvertUtil stringFromCoordinate:self.southwest],[AMapConvertUtil stringFromCoordinate:self.northeast]];
}

@end
