#import "GStaticCluster.h"

@implementation GStaticCluster {
    CLLocationCoordinate2D _position;
    NSMutableSet *_items;
}
//NEED TO CHECK WAHT THIS IS TIM MAKE CAHNGE

- (id)initWithCoordinate:(CLLocationCoordinate2D)coordinate andMarker:(GMSMarker *)marker{
    if (self = [super init]) {
        _position = coordinate;
        _items = [[NSMutableSet alloc] init];
        _marker = marker;
    }
    return self;
}

- (void)add:(GQuadItem*)item {
    [_items addObject:item];
}

- (void)remove:(GQuadItem*)item {
    [_items removeObject:item];
}
- (NSSet*)items {
    return _items;
}

- (CLLocationCoordinate2D)position {
    return _position;
}





@end



//- (id)initWithCoordinate:(CLLocationCoordinate2D)coordinate {
//    if (self = [super init]) {
//        _position = coordinate;
//        _items = [[NSMutableSet alloc] init];
//    }
//    return self;
//}
//
//- (void)add:(GQuadItem*)item {
//    [_items addObject:item];
//}
//
//- (void)remove:(GQuadItem*)item {
//    [_items removeObject:item];
//}
//- (NSSet*)items {
//    return _items;
//}
//
//- (CLLocationCoordinate2D)position {
//    return _position;
//}

