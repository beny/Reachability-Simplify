//
//  Reachability+Simplify.m
//
//  Created by Ondřej Beneš on 12/14/12.
//  Copyright (c) 2012. All rights reserved.
//

#import "Reachability+Simplify.h"

@implementation Reachability (Simplify)

+ (BOOL)isConnected {
    Reachability *reachability = [Reachability reachabilityForInternetConnection];
    return (reachability.currentReachabilityStatus != NotReachable);
}

+ (BOOL)isConnectedOnCellular {
    Reachability *reachability = [Reachability reachabilityForInternetConnection];
    NetworkStatus status = reachability.currentReachabilityStatus;
    return (status != NotReachable && status == ReachableViaWWAN);
}

+ (BOOL)isConnectedOnWifi {
    Reachability *reachability = [Reachability reachabilityForInternetConnection];
    NetworkStatus status = reachability.currentReachabilityStatus;
    return (status != NotReachable && status == ReachableViaWiFi);
}

@end