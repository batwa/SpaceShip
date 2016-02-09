//
//  GameScene.swift
//  SpaceShip
//
//  Created by Stammen, Ben on 1/28/16.
//  Copyright (c) 2016 Buckeye Hackers. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    let playerShip:PlayerShip = PlayerShip();
    let bigAsteroid:BigAsteroid = BigAsteroid()
    let background = SKSpriteNode(imageNamed: "spacebackground")
    
    
    override func didMoveToView(view: SKView) {
        background.position = CGPoint(x:CGRectGetMidX(self.frame), y:CGRectGetMidX(self.frame))
        
        playerShip.position = CGPoint(x:CGRectGetMidX(self.frame), y:CGRectGetMidY(self.frame))
        playerShip.setScale(0.5)
        
        bigAsteroid.position = CGPoint(x:CGRectGetMidX(self.frame), y:CGRectGetMidY(self.frame))
        bigAsteroid.setScale(0.1)
        
        self.addChild(background)
        self.addChild(playerShip)
        self.addChild(bigAsteroid)
        
        bigAsteroid.physicsBody = SKPhysicsBody(circleOfRadius: bigAsteroid.size.height / 2)
        bigAsteroid.physicsBody?.dynamic = true
        bigAsteroid.physicsBody?.allowsRotation = true
        
        let ground = SKNode()
        ground.position = CGPointMake(0, 0)
        ground.physicsBody = SKPhysicsBody(rectangleOfSize: CGSizeMake(self.frame.size.width, 1))
        ground.physicsBody?.dynamic = false
        
        self.addChild(ground)
    }
    
    
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        let touch = touches.first
        let touchLocation = touch!.locationInNode(self)
        
        rotateNode(playerShip, pointToFace: touchLocation)
    }
    
    override func touchesMoved(touches: Set<UITouch>, withEvent event: UIEvent?) {
        let touch = touches.first
        let touchLocation = touch!.locationInNode(self)
        
        rotateNode(playerShip, pointToFace: touchLocation)
    }
   
    func rotateNode(node: SKNode, pointToFace: CGPoint){
        
        let angle:CGFloat = atan2(pointToFace.y - node.position.y, pointToFace.x - node.position.x) - CGFloat(M_PI_2)
        
        if(node.zRotation < 0){
            node.zRotation = node.zRotation + CGFloat(M_PI * 2);
        }
        
        node.runAction(SKAction.rotateToAngle(angle, duration: 0))
    }
    
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
        
    }
}
