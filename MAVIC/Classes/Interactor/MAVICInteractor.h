//
//  MAVICInteractor.h
//  MAVIC
//
//  Created by Filip Busic on 5/20/18.
//

#import <Foundation/Foundation.h>

@class MAVICInteractor;
NS_PROTOCOL_REQUIRES_EXPLICIT_IMPLEMENTATION
@protocol InteractorProtocol <NSObject>
@required
@property (nonatomic, strong, readonly) __kindof MAVICInteractor *interactor;
@end

@interface MAVICInteractor : NSObject
@end
