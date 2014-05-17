//
//  LKMyScene.h
//  LKHeathBarProject
//

//  Copyright (c) 2014 Huy Nguyen. All rights reserved.
//

#import <SpriteKit/SpriteKit.h>
#import "LKHeathBarNode.h"

@interface LKMyScene : SKScene
{
    float lkProcessing;
}
@property (nonatomic, strong) LKHeathBarNode *progressHeathNode;
@end
