//
//  DescriptionView.swift
//  Unsplash
//
//  Created by Jason Meulenhoff on 16/10/2019.
//  Copyright © 2019 Jason Meulenhoff. All rights reserved.
//

import Foundation
import SwiftUI

struct DescriptionView: View {

	var iconName: String
	var title: String
	var description: String

	var body: some View {
		HStack(alignment: .top, spacing: 20) {
			Image(iconName)
				.frame(width: 46, height: 46)
				.background(Color("accent"))
				.clipShape(Circle())
			VStack(alignment: .leading, spacing: 6) {
				Text(title.uppercased())
					.font(.custom("GothamNarrow-Ultra", size: 14))
					.foregroundColor(Color("text"))
					.lineLimit(nil)
				Text(description)
				.font(.custom("Gotham-Book", size: 14))
				.foregroundColor(Color("text"))
				Spacer()
			}
			.frame(height: 110)
		}
	}
}
