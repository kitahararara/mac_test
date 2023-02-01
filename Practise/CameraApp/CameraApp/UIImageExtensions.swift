//
//  UIImageExtensions.swift
//  CameraApp
//
//  Created by kenichi kitahara on 2023/01/24.
//

import UIKit

extension UIImage {
    func redraw() -> UIImage {
        let format = UIGraphicsImageRendererFormat()
        format.scale = 1
        return UIGraphicsImageRenderer(size: size, format: format)
            .image { context in
                draw(in: CGRect(origin: .zero, size: size))
            }
    }
}
