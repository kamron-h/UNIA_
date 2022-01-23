//
//  Orientation.swift
//  UNIA-ACL
//
//  Created by Kamron Hopkins on 1/16/22.
//

import SwiftUI

struct OrientationView: View {
    
    let weeks = [
        "Week 1 - Intro to UNIA",
        "Week 2 - Garvey's Legacy",
        "Week 3 - UNIA Fundamentals",
        "Week 4 - World History",
        "Week 5 - UNIA Politics",
        "Week 6 - The African Legion",
        "Week 7 - The BlackCross",
        "Week 8 - Black Economics",
        "Week 9 - African Mathematics",
        "Week 10 - African History",
        "Week 11 - Current Opposition",
        "Week 12 - The UNIAs Future"]
    
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
    }
}

struct OrientationView_Previews: PreviewProvider {
    static var previews: some View {
        OrientationView()
    }
}
