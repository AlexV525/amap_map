#import "AMapVisibleRegion.h"
#import "AMapConvertUtil.h"

@implementation AMapVisibleRegion

- (NSDictionary *)toDictionary {
    NSMutableDictionary *dict = [NSMutableDictionary dictionaryWithCapacity:4];
    [dict setObject:[self.latLngBounds toDictionary] forKey:@"latLngBounds"];
    [dict setObject:[AMapConvertUtil jsonArrayFromCoordinate:self.farLeft] forKey:@"farLeft"];
    [dict setObject:[AMapConvertUtil jsonArrayFromCoordinate:self.farRight] forKey:@"farRight"];
    [dict setObject:[AMapConvertUtil jsonArrayFromCoordinate:self.nearLeft] forKey:@"nearLeft"];
    [dict setObject:[AMapConvertUtil jsonArrayFromCoordinate:self.nearRight] forKey:@"nearRight"];
    return [dict copy];
}

- (NSString *)description {
    return [NSString stringWithFormat:@"VisibleRegion(latLngBounds:%@, farLeft:%@, farRight:%@, nearLeft:%@, nearRight:%@)",[self.latLngBounds description],[AMapConvertUtil stringFromCoordinate:self.farLeft],[AMapConvertUtil stringFromCoordinate:self.farRight],[AMapConvertUtil stringFromCoordinate:self.nearLeft],[AMapConvertUtil stringFromCoordinate:self.nearRight]];
}

@end
