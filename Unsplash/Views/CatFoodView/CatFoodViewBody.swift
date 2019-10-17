//
//  CatFoodViewBody.swift
//  Unsplash
//
//  Created by Jason Meulenhoff on 16/10/2019.
//  Copyright © 2019 Jason Meulenhoff. All rights reserved.
//

import Foundation
import SwiftUI

struct CatFoodScreenBodyView: View {

	var images: [Image] = []

	var body: some View {
		VStack(alignment: .leading) {
			GalleryView()
			VStack(alignment: .leading, spacing: 20) {
				ZStack {
					VerticalLine(position: CGPoint(x: 22, y: 108))
					VerticalLine(position: CGPoint(x: 22, y: 234))
				}
				DescriptionView(iconName: "iconCat",
							title: "About",
							description: "Cats need animal protein, fat, and other vitamins and minerals -- and they can get these nutrients from many different sources. The protein in commercial cat foods can c…")
				DescriptionView(iconName: "iconTime",
							title: "When",
							description: "Everyday - 10 am - 10 pm")
			}
			.padding(20)
		}
	}
}
