//
//  Gallery.swift
//  Unsplash
//
//  Created by Jason Meulenhoff on 16/10/2019.
//  Copyright © 2019 Jason Meulenhoff. All rights reserved.
//

import Foundation
import SwiftUI

struct GalleryView: View {

	var body: some View {
		ScrollView(.horizontal, showsIndicators: false) {
			VStack {
				HStack(spacing: 10) {
					Spacer()
					VStack {
						ImageTileView(text: "big", size: CGSize(width: 200, height: 220))
					}
					VStack {
						ImageTileView(text: "small-0", size: CGSize(width: 105, height: 105))
						Spacer(minLength: 10)
						ImageTileView(text: "small-1", size: CGSize(width: 105, height: 105))
					}
					VStack {
						ImageTileView(text: "small-2", size: CGSize(width: 105, height: 105))
						Spacer(minLength: 10)
						ImageTileView(text: "small-3", size: CGSize(width: 105, height: 105))
					}
					VStack {
						ImageTileView(text: "small-4", size: CGSize(width: 105, height: 105))
						Spacer(minLength: 10)
					}
					Spacer()
				}
			}
		}
		.frame(maxWidth: .infinity, maxHeight: 220)
	}
}
