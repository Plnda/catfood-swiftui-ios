//
//  CatFoodView.swift
//  Unsplash
//
//  Created by Jason Meulenhoff on 16/10/2019.
//  Copyright © 2019 Jason Meulenhoff. All rights reserved.
//

import Foundation

import SwiftUI

struct CatFoodView: View {
    var body: some View {
		NavigationView {
			VStack(alignment: .leading) {
				Text("fantastic\ncat food".uppercased())
					.font(.custom("GothamNarrow-Ultra", size: 59))
					.foregroundColor(Color("text"))
					.fontWeight(.bold)
					.padding(.leading, 25)
				VStack(alignment: .leading) {
					CatFoodScreenSocialView()
					CatFoodScreenBodyView()
					Spacer()
				}
			}
		}
    }
}

struct CatFoodView_Previews: PreviewProvider {
    static var previews: some View {
        CatFoodView()
    }
}
