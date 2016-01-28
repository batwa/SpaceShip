//
//  GameScene.swift
//  SpaceShip
//
//  Created by Stammen, Ben on 1/28/16.
//  Copyright (c) 2016 Buckeye Hackers. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    override func didMoveToView(view: SKView) {
        let playerShip:PlayerShip = PlayerShip();
        playerShip.position = CGPoint(x:CGRectGetMidX(self.frame), y:CGRectGetMidY(self.frame))
        playerShip.setScale(0.5)
        
        self.addChild(playerShip)
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {

    }
    
    override func touchesMoved(touches: Set<UITouch>, withEvent event: UIEvent?) {
        
    }
   
    func rotateNode(node: SKNode, pointToFace: CGPoint){
        
        let angle:CGFloat = atan2(pointToFace.y - node.position.y, pointToFace.x - node.position.x)
        
        if(node.zRotation < 0){
            node.zRotation = node.zRotation + CGFloat(M_PI * 2);
        }
        
        node.runAction(SKAction.rotateToAngle(angle, duration: 0))
    }
    
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }
}
