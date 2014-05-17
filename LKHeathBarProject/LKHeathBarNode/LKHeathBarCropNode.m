//
//  LKHeathBarCropNode.m
//  LKHeathBarProject
//
//  Created by Huy Nguyen on 5/17/14.
//  Copyright (c) 2014 Huy Nguyen. All rights reserved.
//

#import "LKHeathBarCropNode.h"

#define ChangingHeath @"ChangingHeath"

@implementation LKHeathBarCropNode
- (id)init
{
    return [self initWithTexture:nil];
}

- (id)initWithTexture:(SKTexture *)texture
{
    if (!texture)
    {
        NSAssert(NO, @"Error - must be initialized with texture.");
        return nil;
    }
    
    self = [super init];
    
    if (self)
    {
        _lkPercent = texture.size.width / 2.0f;
        
        [self initializeIndicatorSpriteNodeWithTexture:texture];
        [self initializeMaskNode];
    }
    
    return self;
}

#pragma mark - Initialization
- (void)initializeIndicatorSpriteNodeWithTexture:(SKTexture *)texture
{
    _lkIndicatorNode = [SKSpriteNode spriteNodeWithTexture:texture];
    [self addChild:_lkIndicatorNode];
}

- (void)initializeMaskNode
{
    _lkMaskNode = [SKSpriteNode spriteNodeWithImageNamed:@"HeathCropImg"];
    self.maskNode = _lkMaskNode;
}

- (void)setProgress:(CGFloat)progress
{
    [_lkMaskNode removeActionForKey:ChangingHeath];
    
    progress = 1.0f - progress;
    float lkWidth = _lkMaskNode.size.width;
    
    SKAction * moveTo = [SKAction moveTo:CGPointMake(-lkWidth * progress, _lkMaskNode.position.y) duration:0.3];
    [_lkMaskNode runAction:moveTo withKey:ChangingHeath];
}

@end
