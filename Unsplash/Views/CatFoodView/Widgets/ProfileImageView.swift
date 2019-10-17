
//
//  ProfileImageView.swift
//  Unsplash
//
//  Created by Jason Meulenhoff on 16/10/2019.
//  Copyright © 2019 Jason Meulenhoff. All rights reserved.
//

import Foundation
import SwiftUI

struct ProfileImage: View {

	var image: String
	var offset: CGPoint
	var delay: Double

	@State private var privateOffset: CGPoint = CGPoint(x: -27, y: 0)
	@State private var angle = Angle(degrees: 0.0)

	var body: some View {
		Image(self.image)
			.resizable()
			.aspectRatio(contentMode: .fill)
			.frame(width: 36, height: 36)
			.clipShape(Circle())
			.overlay(
				Circle().stroke(Color.white, lineWidth: 3)
			)
			.rotationEffect(self.angle)
			.zIndex(0)
			.offset(x: self.privateOffset.x, y: self.privateOffset.y)
			.onAppear(perform: {
				withAnimation(Animation.easeInOut(duration: 0.4).delay(self.delay)) {
					self.privateOffset = self.offset
					self.angle = Angle(degrees: 360)
				}
			})
	}
}
