//
//  MAVICViewController.h
//  MAVIC
//
//  Created by Filip Busic on 5/20/18.
//

#import <UIKit/UIKit.h>
#import <MAVIC/MAVICInteractor.h>

/** Types of actions for when the leak detector finds a leak. */
typedef NS_ENUM(NSUInteger, MAVICMemoryLeakDetectorActionType) {
  /** -Log will NSLog a message of the potentially leaked view controller along with its address. */
  MAVICMemoryLeakDetectorActionTypeLog = 0,
  
  /** -Assert will raise a NSException if the leak detector finds a leak. */
  MAVICMemoryLeakDetectorActionTypeException,
  
  /** -None will do nothing if the leak detector finds a leak. */
  MAVICMemoryLeakDetectorActionTypeNone
};

@interface MAVICViewController : UIViewController <InteractorProtocol>

/** ENUM for the action of the leak detector. Override this property in the View Controller and set it to either Log/Exception/None. This property is `MAVICMemoryLeakDetectorActionTypeLog` by default. */
@property (nonatomic, assign, readonly) MAVICMemoryLeakDetectorActionType leakDetectorActionType;

@end
