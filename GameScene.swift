//
//  GameScene.swift
//  WaxTheLeg
//
//  Created by Akshdeep Kaur on 2019-06-19.
//  Copyright © 2019 Akshdeep Kaur. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    var xd:CGFloat = 0
    var yd:CGFloat = 0
    
    var leg=SKSpriteNode(imageNamed: "leg")
    var Hair1=SKSpriteNode(imageNamed: "Hair1")
    var Hair2=SKSpriteNode(imageNamed: "hair2")
    var Hair3=SKSpriteNode(imageNamed: "Hair3")
    var Hair4=SKSpriteNode(imageNamed: "Hair4")
    
    
    private var label : SKLabelNode?
    private var spinnyNode : SKShapeNode?
    
    override func didMove(to view: SKView) {
    }
    
    override func update(_ currentTime: TimeInterval) {
        
    }
    
    private var currentNode: SKNode?
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let touch = touches.first {
            let location = touch.location(in: self)
            
            let touchedNodes = self.nodes(at: location)
            for node in touchedNodes.reversed() {
                if node.name == "hair1" {
                    self.currentNode = node
                    node.removeFromParent()
                    
                    
                }
            }
        }
    }
    override  func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        if let touch = touches.first, let node = self.currentNode {
            let touchLocation = touch.location(in: self)
            node.position = touchLocation
        }
    }
}


