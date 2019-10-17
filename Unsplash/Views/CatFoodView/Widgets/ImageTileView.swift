//
//  ImageTile.swift
//  Unsplash
//
//  Created by Jason Meulenhoff on 16/10/2019.
//  Copyright © 2019 Jason Meulenhoff. All rights reserved.
//

import Foundation
import SwiftUI

struct ImageTileView: View {

	var text: String
	var size: CGSize

	var body: some View {
		VStack {
			Image(self.text)
				.resizable()
				.aspectRatio(contentMode: .fill)
				.frame(width: self.size.width, height: self.size.height)
				.modifier(ImageModifier())
		}
	}

	private struct ImageModifier: ViewModifier {

		func body(content: Content) -> some View {
			return content.foregroundColor(Color("text"))
					.font(.custom("Gotham-Book", size: 14))
					.background(Color.secondary)
					.cornerRadius(10)
		}
	}
}
