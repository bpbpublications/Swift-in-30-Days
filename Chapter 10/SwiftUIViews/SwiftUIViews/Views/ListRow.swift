//
//  ListRow.swift
//  SwiftUIViews
//
//  Created by Gaurang on 24/02/2021.
//

import SwiftUI

struct ListRow: View {
    var person: Person
    var body: some View {
        HStack {
            Image("Image").resizable()
                .frame(width: 50, height: 50)
            Text(person.name)
            Spacer()
        }
    }
}

struct ListRow_Previews: PreviewProvider {
    static var previews: some View {
        ListRow(person:persons[0]).previewLayout(.fixed(width: 300, height: 70))
    }
}
