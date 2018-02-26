//
//  Extension.swift
//  Portal
//
//  Created by Akhm Oryn on 22.02.2018.
//  Copyright © 2018 Getting Out Our Dreams. All rights reserved.
//

import Foundation
import SceneKit
import ARKit

var width: CGFloat = 0.2
var height: CGFloat = 1
var length: CGFloat = 1

func createBox(isDoor : Bool) -> SCNNode {
    let node = SCNNode()
    
    //Add first box
    let firstBox = SCNBox(width: width, height: height, length: length, chamferRadius: 0)
    let firstBoxNode = SCNNode(geometry: firstBox)
    firstBoxNode.renderingOrder = 200
    
    node.addChildNode(firstBoxNode)
    
    //Add masked box
    let maskedBox = SCNBox(width: width, height: height, length: length, chamferRadius: 0)
    maskedBox.firstMaterial?.diffuse.contents = UIColor.white
    maskedBox.firstMaterial?.transparency = 0.0001
    
    let maskedBoxNode = SCNNode(geometry: maskedBox)
    maskedBoxNode.renderingOrder = 100
    maskedBoxNode.position = SCNVector3.init(width, 0, 0)
    
    return node
}
