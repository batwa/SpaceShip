//
//  PlayerShip.swift
//  SpaceShip
//
//  Created by Stammen, Ben on 1/28/16.
//  Copyright © 2016 Buckeye Hackers. All rights reserved.
//

import SpriteKit

class PlayerShip: SKSpriteNode {
    
    
    init(){
        let texture = SKTexture(imageNamed: "Spaceship")
        super.init(texture: texture, color: SKColor.clearColor(), size: texture.size())
        self.name = "PlayerShip"
    }
    
    required init?(coder aDecoder: NSCoder){
        super.init(coder: aDecoder)
    }
}
