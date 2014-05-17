//
//  LKHeathBarCropNode.h
//  LKHeathBarProject
//
//  Created by Huy Nguyen on 5/17/14.
//  Copyright (c) 2014 Huy Nguyen. All rights reserved.
//

#import <SpriteKit/SpriteKit.h>

@interface LKHeathBarCropNode : SKCropNode

@property (nonatomic) CGFloat lkPercent;

@property (nonatomic, strong) SKSpriteNode * lkIndicatorNode;
@property (nonatomic, strong) SKSpriteNode * lkMaskNode;
@property (nonatomic, strong) SKCropNode * lkCropNode;

- (id)initWithTexture:(SKTexture *)texture;
- (void)setProgress:(CGFloat)progress;
@end
