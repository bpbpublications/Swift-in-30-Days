//
//  ProfileImage.swift
//  SwiftUIViews
//
//  Created by Gaurang on 24/02/2021.
//

import SwiftUI

struct ProfileImage: View {
    var body: some View {
        Image("Image")
            .overlay(Circle().stroke(Color.gray, lineWidth: 3))
                        .shadow(radius:5)
    }
}

struct ProfileImage_Previews: PreviewProvider {
    static var previews: some View {
        ProfileImage()
    }
}
