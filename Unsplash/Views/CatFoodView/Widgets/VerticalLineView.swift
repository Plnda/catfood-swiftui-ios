//
//  VerticalLineView.swift
//  Unsplash
//
//  Created by Jason Meulenhoff on 16/10/2019.
//  Copyright © 2019 Jason Meulenhoff. All rights reserved.
//

import Foundation
import SwiftUI

struct VerticalLine: View {

	var position: CGPoint
	var body: some View {
		Rectangle()
			.strokeBorder(style:
				StrokeStyle(lineWidth: 1,dash: [4])
			)
			.foregroundColor(Color("accent"))
			.frame(width: 1, height: 60)
			.position(x: position.x, y: position.y)
	}
}
