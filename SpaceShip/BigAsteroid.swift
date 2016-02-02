//
//  BigAsteroid.swift
//  BigAsteroid
//
//  Created by Olivia Long on 2/2/16.
//  Copyright © 2016 Buckeye Hackers. All rights reserved.
//

import SpriteKit

class BigAsteroid: SKSpriteNode {
    
    init(){
        let texture = SKTexture(imageNamed: "bigSpaceRock")
        super.init(texture: texture, color: SKColor.clearColor(), size: texture.size())
        self.name = "BigAsteroid"
    }
    
    required init?(coder aDecoder: NSCoder){
        super.init(coder: aDecoder)
    }
}
