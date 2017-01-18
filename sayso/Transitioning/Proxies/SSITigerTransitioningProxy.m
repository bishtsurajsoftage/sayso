//
//  SSILionTransitioningProxy.h
//  SSICoreLib
//
//  Created by Kevin Muldoon on 12/11/15.
//  Copyright © 2015 Survey Sampling International, LLC. All rights reserved.
//

#import "SSITigerTransitioningProxy.h"
#import "SSIPresentationAnimatedTransitioning.h"

@implementation SSITigerTransitioningProxy

- (nullable UIPresentationController *)presentationControllerForPresentedViewController:(UIViewController *)presented
                                                               presentingViewController:(UIViewController *)presenting
                                                                   sourceViewController:(UIViewController *)source NS_AVAILABLE_IOS(8_0) {
    return [[SSIVanillaPresentationController alloc] initWithPresentedViewController:presented presentingViewController:presenting];
}

- (id<UIViewControllerAnimatedTransitioning>)animationControllerForPresentedController:(UIViewController *)presented
                                                                  presentingController:(UIViewController *)presenting
                                                                      sourceController:(UIViewController *)source {
    return [SSIVerticalCarouselSpringyPresentAnimatedTransitioning new];
//    return [SSIPopUpSpringyPresentAnimatedTransitioning new];
}

- (id<UIViewControllerAnimatedTransitioning>)animationControllerForDismissedController:(UIViewController *)dismissed {
    
    return [SSIPopUpDismissAnimatedTransitioning new];
    
}

@end
