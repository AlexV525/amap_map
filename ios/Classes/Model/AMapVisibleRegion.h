#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>
#import "AMapCoordinateBounds.h"

@class AMapVisibleRegion;

NS_ASSUME_NONNULL_BEGIN

#pragma mark - Object interfaces

@interface AMapVisibleRegion : NSObject

@property (nonatomic, strong) AMapCoordinateBounds* latLngBounds;
@property (nonatomic, assign) CLLocationCoordinate2D farLeft;
@property (nonatomic, assign) CLLocationCoordinate2D farRight;
@property (nonatomic, assign) CLLocationCoordinate2D nearLeft;
@property (nonatomic, assign) CLLocationCoordinate2D nearRight;

- (NSDictionary *)toDictionary;

@end

NS_ASSUME_NONNULL_END
