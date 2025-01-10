#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>

@class AMapCoordinateBounds;

NS_ASSUME_NONNULL_BEGIN

#pragma mark - Object interfaces

@interface AMapCoordinateBounds : NSObject

@property (nonatomic, assign) CLLocationCoordinate2D northeast;

@property (nonatomic, assign) CLLocationCoordinate2D southwest;

- (NSDictionary *)toDictionary;

@end

NS_ASSUME_NONNULL_END
