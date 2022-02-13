//
//  Orientation.swift
//  UNIA-ACL
//
//  Created by Kamron Hopkins on 1/16/22.
//

import SwiftUI

struct OrientationView: View {
    
    let weeks = [
        "Week 1 - Intro to U.N.I.A.",
        "Week 2 - Garvey's Legacy",
        "Week 3 - UNIA Fundamentals",
        "Week 4 - Afrikan World History",
        "Week 5 - UNIA Politics",
        "Week 6 - The African Legion",
        "Week 7 - The BlackCross",
        "Week 8 - Black Economics",
        "Week 9 - African Mathematics",
        "Week 10 - Current Opposition",
        "Week 11 - The UNIAs Future",
        "Week 12 - Liberation By Education & Confrontation"]
    
    var body: some View {
        ScrollView {
            Spacer()
            ForEach(weeks, id: \.self) { week in
                NavigationLink {
                    NewsView()
                } label: {
                    Text(week)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .foregroundColor(.orange)
                }
                .frame(maxWidth: .infinity)
                .padding([.leading, .top], 5)
                Divider()
//                Text(week)
            }
        }
        .navigationTitle(Text("Orientation"))
    }
}

struct OrientationView_Previews: PreviewProvider {
    static var previews: some View {
        OrientationView()
    }
}
