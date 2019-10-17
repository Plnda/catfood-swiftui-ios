//
//  ProfileTextView.swift
//  Unsplash
//
//  Created by Jason Meulenhoff on 16/10/2019.
//  Copyright © 2019 Jason Meulenhoff. All rights reserved.
//

import Foundation
import SwiftUI

struct ProfileText: View {

	var text: String
	var delay: Double

	@State private var privateOffset: CGPoint = CGPoint(x: -50, y: 0)
	@State private var alpha: Double = 0

	var body: some View {
		Text(text)
			.font(.custom("Gotham-Book", size: 14))
			.foregroundColor(Color("text"))
			.opacity(alpha)
			.offset(x: privateOffset.x, y: privateOffset.y)
			.onAppear {
				withAnimation(Animation.easeInOut(duration: 0.4).delay(self.delay)) {
					self.privateOffset = .zero
					self.alpha = 1
				}
			}
	}
}
