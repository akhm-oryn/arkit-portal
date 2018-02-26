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
    let firstBox = SCNNode(geometry: firstBox)
    firstBoxNode.renderingOrder = 200
    
    node.addChildNode(firstBoxNode)
    
    return node
}
