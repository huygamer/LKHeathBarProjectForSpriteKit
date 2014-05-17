//
//  LKHeathBarNode.m
//  LKHeathBarProject
//
//  Created by Huy Nguyen on 5/17/14.
//  Copyright (c) 2014 Huy Nguyen. All rights reserved.
//

#import "LKHeathBarNode.h"

@implementation LKHeathBarNode
- (id)initHeathBar
{
    self = [super initWithColor:[UIColor clearColor] size:[SKTexture textureWithImageNamed:@"HeathBarFill"].size];
    
    SKTexture * backgroundTexture = [SKTexture textureWithImageNamed:@"HeathBarBack"];
    SKTexture * foregroundTexture = [SKTexture textureWithImageNamed:@"HeathBarFill"];
    SKTexture * lkIconStatus = [SKTexture textureWithImageNamed:@"HeathBarIcon"];
    
    _backgroundImageSpriteNode = [SKSpriteNode spriteNodeWithTexture:backgroundTexture];
    [self addChild:_backgroundImageSpriteNode];
    
    _foregroundCropNode = [[LKHeathBarCropNode alloc] initWithTexture:foregroundTexture];
    [self addChild:_foregroundCropNode];
    
    SKSpriteNode * lkIconStatusNode = [SKSpriteNode spriteNodeWithTexture:lkIconStatus];
    float lkWidth = backgroundTexture.size.width;
    lkIconStatusNode.position = CGPointMake(-lkWidth/2, lkIconStatusNode.position.y);
    [self addChild:lkIconStatusNode];
    
    return self;
}

#pragma mark - Public Methods

- (void)setProgress:(CGFloat)progress
{
    [self.foregroundCropNode setProgress:progress];
}

@end
