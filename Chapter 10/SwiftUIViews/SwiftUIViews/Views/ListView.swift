//
//  ListView.swift
//  SwiftUIViews
//
//  Created by Gaurang on 24/02/2021.
//

import SwiftUI

struct ListView: View {
    var body: some View {
        NavigationView {
            List(persons, id: \.name) { person in
                NavigationLink(destination:DetailsView(person: person) ) {
                    ListRow(person: person)
                }
            }
            .navigationTitle("Cool people")
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone 11 pro", "iPhone SE (2nd generation)"], id: \.self) { deviceName in
            ListView()
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
    }
}
