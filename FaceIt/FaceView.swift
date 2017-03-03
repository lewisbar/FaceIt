//
//  FaceView.swift
//  FaceIt
//
//  Created by Lennart Wisbar on 03.03.17.
//  Copyright © 2017 Lennart Wisbar. All rights reserved.
//

import UIKit

class FaceView: UIView {

    var scale: CGFloat = 0.9
    
    private var skullRadius: CGFloat {
        return min(bounds.width, bounds.height) / 2 * scale
    }
    
    private var skullCenter: CGPoint {
        return CGPoint(x: bounds.midX, y: bounds.midY)
    }
    
    private func pathForSkull() -> UIBezierPath {
        let path = UIBezierPath(arcCenter: skullCenter, radius: skullRadius, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true)
        path.lineWidth = 5.0
        return path
    }
    
    private func pathForMouth() -> UIBezierPath {
        let path = UIBezierPath(arcCenter: skullCenter, radius: skullRadius/2, startAngle: 0.2*CGFloat.pi, endAngle: 0.8*CGFloat.pi, clockwise: true)
        path.lineWidth = 3.0
        return path
    }
    
    override func draw(_ rect: CGRect) {
        UIColor.blue.set()
        pathForSkull().stroke()
        pathForMouth().stroke()
    }

}
