//
//  PinBackspaceButton.swift
//  GKPinViewExample
//
//  Created by Gligor Kotushevski on 2/08/17.
//  Copyright © 2017 Gligor Kotushevski. All rights reserved.
//

@IBDesignable
final class PinBackspaceButton: UIButton {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // button target action
        addTarget(self, action: #selector(onTap), for: .touchUpInside)
    }
    
    dynamic private func onTap() {
        animateTap()
    }
    
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        
        // draw the backspace button
        let bezierPath = UIBezierPath()
        bezierPath.move(to: CGPoint(x: 50, y: 21.5))
        bezierPath.addLine(to: CGPoint(x: 27.5, y: 21.5))
        bezierPath.addCurve(to: CGPoint(x: 25.11, y: 22.82), controlPoint1: CGPoint(x: 26.46, y: 21.5), controlPoint2: CGPoint(x: 25.65, y: 22.02))
        bezierPath.addLine(to: CGPoint(x: 17, y: 35))
        bezierPath.addLine(to: CGPoint(x: 25.11, y: 47.16))
        bezierPath.addCurve(to: CGPoint(x: 27.5, y: 48.5), controlPoint1: CGPoint(x: 25.66, y: 47.96), controlPoint2: CGPoint(x: 26.46, y: 48.5))
        bezierPath.addLine(to: CGPoint(x: 50, y: 48.5))
        bezierPath.addCurve(to: CGPoint(x: 53, y: 45.5), controlPoint1: CGPoint(x: 51.65, y: 48.5), controlPoint2: CGPoint(x: 53, y: 47.15))
        bezierPath.addLine(to: CGPoint(x: 53, y: 24.5))
        bezierPath.addCurve(to: CGPoint(x: 50, y: 21.5), controlPoint1: CGPoint(x: 53, y: 22.85), controlPoint2: CGPoint(x: 51.65, y: 21.5))
        bezierPath.close()
        bezierPath.move(to: CGPoint(x: 45.5, y: 40.39))
        bezierPath.addLine(to: CGPoint(x: 43.39, y: 42.5))
        bezierPath.addLine(to: CGPoint(x: 38, y: 37.11))
        bezierPath.addLine(to: CGPoint(x: 32.61, y: 42.5))
        bezierPath.addLine(to: CGPoint(x: 30.5, y: 40.39))
        bezierPath.addLine(to: CGPoint(x: 35.89, y: 35))
        bezierPath.addLine(to: CGPoint(x: 30.5, y: 29.61))
        bezierPath.addLine(to: CGPoint(x: 32.61, y: 27.5))
        bezierPath.addLine(to: CGPoint(x: 38, y: 32.89))
        bezierPath.addLine(to: CGPoint(x: 43.39, y: 27.5))
        bezierPath.addLine(to: CGPoint(x: 45.5, y: 29.61))
        bezierPath.addLine(to: CGPoint(x: 40.11, y: 35))
        bezierPath.addLine(to: CGPoint(x: 45.5, y: 40.39))
        bezierPath.close()
        tintColor.setStroke()
        bezierPath.lineWidth = 1.5
        bezierPath.miterLimit = 4
        bezierPath.lineCapStyle = .round
        bezierPath.lineJoinStyle = .round
        bezierPath.stroke()

    }
    
}
