//
//  CatFoodViewSocial.swift
//  Unsplash
//
//  Created by Jason Meulenhoff on 16/10/2019.
//  Copyright © 2019 Jason Meulenhoff. All rights reserved.
//

import Foundation
import SwiftUI

struct CatFoodScreenSocialView: View {

	var body: some View {
		HStack {
			ZStack(alignment: .leading) {
				ProfileImage(image: "cat", offset: CGPoint(x: -27, y: 0.9), delay: 1)
				ProfileImage(image: "cat-1", offset: CGPoint(x: 0, y: 0.6), delay: 1)
				ProfileImage(image: "cat-2", offset: CGPoint(x: 27, y: 0), delay: 1)
			}
			.padding(.leading, 16)
			.frame(width: 118, height: 36)
			ProfileText(text: "2,980 cats like this", delay: 1)
			Spacer()
		}
		.padding(.bottom, 25)
	}
}

