//
//  LKMyScene.m
//  LKHeathBarProject
//
//  Created by Huy Nguyen on 5/17/14.
//  Copyright (c) 2014 Huy Nguyen. All rights reserved.
//

#import "LKMyScene.h"

#define amoutHeath .2f

@implementation LKMyScene

-(id)initWithSize:(CGSize)size {    
    if (self = [super initWithSize:size]) {
        _progressTimerNode = [[LKHeathBarNode alloc] initHeathBar];
        _progressTimerNode.position = CGPointMake(roundf(size.width / 2.0f), roundf(size.height / 2.0f) - 20);
        [_progressTimerNode setScale:2.0];
        lkProcessing = 1.0f;
        
        [_progressTimerNode setProgress:1.0f];
        [self addChild:_progressTimerNode];
        
        SKSpriteNode * lkMoreHeath = [SKSpriteNode spriteNodeWithImageNamed:@"MoreButton"];
        lkMoreHeath.position = CGPointMake(CGRectGetMidX(self.frame) + 150, CGRectGetMidY(self.frame) - 260);
        lkMoreHeath.name = @"MoreButton";
        [self addChild:lkMoreHeath];
        
        SKSpriteNode * lkLessHeath = [SKSpriteNode spriteNodeWithImageNamed:@"LessButton"];
        lkLessHeath.position = CGPointMake(CGRectGetMidX(self.frame) - 150, CGRectGetMidY(self.frame) - 260);
        lkLessHeath.name = @"LessButton";
        [self addChild:lkLessHeath];
    }
    return self;
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    for (UITouch *touch in touches) {
        CGPoint location = [touch locationInNode:self];
        
        SKNode *node = [self nodeAtPoint:location];
        
        if ([node.name isEqualToString:@"MoreButton"]){
            lkProcessing = lkProcessing >= (1 - amoutHeath) ? 1 : lkProcessing + amoutHeath;
            [_progressTimerNode setProgress:lkProcessing];
        }
        
        if ([node.name isEqualToString:@"LessButton"]){
            lkProcessing = lkProcessing <= amoutHeath ? 0 : lkProcessing - amoutHeath;
            [_progressTimerNode setProgress:lkProcessing];
        }
    }
}

-(void)update:(CFTimeInterval)currentTime {

}

@end
