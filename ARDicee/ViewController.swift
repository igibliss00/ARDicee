//
//  ViewController.swift
//  ARDicee
//
//  Created by jc on 2020-06-13.
//  Copyright © 2020 J. All rights reserved.
//

import UIKit
import SceneKit
import ARKit

class ViewController: UIViewController, ARSCNViewDelegate {

    @IBOutlet var sceneView: ARSCNView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set the view's delegate
        sceneView.delegate = self
        
//        let cube = SCNBox(width: 0.1, height: 0.1, length: 0.1, chamferRadius: 0.01)
//        let sphere = SCNSphere(radius: 0.6)
//        let sun = SCNSphere(radius: 0.4)
//
//        let material = SCNMaterial()
//        let sunMaterial = SCNMaterial()
//
//        material.diffuse.contents = UIImage(named: "art.scnassets/8k_moon.jpg")
//        sunMaterial.diffuse.contents = UIImage(named: "art.scnassets/8k_sun.jpg")
//
//        sphere.materials = [material]
//        sun.materials = [sunMaterial]
//
//        let node = SCNNode()
//        let sunNode = SCNNode()
//
//        node.position = SCNVector3(x: 0, y: 0.9, z: -2.0)
//        sunNode.position = SCNVector3(x: 2, y: 0, z: -0.10)
//
//        node.geometry = sphere
//        sunNode.geometry = sun
//
//        sceneView.scene.rootNode.addChildNode(node)

        sceneView.autoenablesDefaultLighting = true
        
//         Show statistics such as fps and timing information
//        sceneView.showsStatistics = true
//        // Create a new scene
        let diceScene = SCNScene(named: "art.scnassets/diceCollada.scn")!
        if let diceNode = diceScene.rootNode.childNode(withName: "Dice", recursively: true) {
            diceNode.position = SCNVector3(x: 0, y: 1, z: -0.8)
            //
            //        // Set the scene to the view
            //        sceneView.scene = scene
                        sceneView.scene.rootNode.addChildNode(diceNode)
        }
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // Create a session configuration
        let configuration = ARWorldTrackingConfiguration()

        // Run the view's session
        sceneView.session.run(configuration)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        // Pause the view's session
        sceneView.session.pause()
    }


}
