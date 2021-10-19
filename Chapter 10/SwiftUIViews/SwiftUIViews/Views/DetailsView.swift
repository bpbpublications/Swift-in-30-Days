//
//  DetailsView.swift
//  SwiftUIViews
//
//  Created by Gaurang on 27/02/2021.
//

import SwiftUI

struct DetailsView: View {
    @State private var showingAlert = false
    var person: Person
    var body: some View {
        VStack() {
            ProfileImage()
            Text("Hello, \(person.name)!")
                .font(.title)
                .fontWeight(.semibold)
                .lineLimit(4)
                .padding()
                .foregroundColor(.blue)
            
            Text(person.education)
            Spacer().frame(height:30)
            Text("Currently living in \(person.city)")
            Spacer().frame(height:20)
            Button(action: {
                showingAlert = true
            }, label: {
                Text("Add friend")
                    .padding()
                    .background(Color.green)
                    .foregroundColor(Color.white)
                    .cornerRadius(10)
            }).alert(isPresented: $showingAlert) {
                Alert(title: Text("Friend request sent"), message: nil, dismissButton: .default(Text("Ok")))
            }
        }
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView(person: persons[0])
    }
}
