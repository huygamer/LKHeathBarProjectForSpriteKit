//
//  LKHeathBarNode.h
//  LKHeathBarProject
//
//  Created by Huy Nguyen on 5/17/14.
//  Copyright (c) 2014 Huy Nguyen. All rights reserved.
//

#import <SpriteKit/SpriteKit.h>
#import "LKHeathBarCropNode.h"

@interface LKHeathBarNode : SKSpriteNode

@property (nonatomic, strong) SKSpriteNode *backgroundImageSpriteNode;
@property (nonatomic, strong) LKHeathBarCropNode *foregroundCropNode;
@property (nonatomic, strong) SKSpriteNode *accessorySpriteNode;

- (id)initWithForegroundImageNamed:(NSString *)foregroundImageName
              backgroundImageNamed:(NSString *)backgroundImageName
               accessoryImageNamed:(NSString *)accessoryImageName;

- (id)initWithForegroundTexture:(SKTexture *)foregroundTexture
              backgroundTexture:(SKTexture *)backgroundTexture
               accessoryTexture:(SKTexture *)accessoryTexture;

- (void)setProgress:(CGFloat)progress;
@end
