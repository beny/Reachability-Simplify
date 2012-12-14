//
//  Reachability+Simplify.h
//
//  Created by Ondřej Beneš on 12/14/12.
//  Copyright (c) 2012. All rights reserved.
//

#import "Reachability.h"

@interface Reachability (Simplify)

+ (BOOL)isConnected;
+ (BOOL)isConnectedOnCellular;
+ (BOOL)isConnectedOnWifi;

@end