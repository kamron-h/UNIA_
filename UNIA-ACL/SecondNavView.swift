//
//  SecondNavView.swift
//  UNIA-ACL
//
//  Created by Kamron Hopkins on 1/22/22.
//

import SwiftUI

struct SecondNavView: View {
    
    let gridLayout = [
        GridItem(.flexible()),
        GridItem(.flexible()),
    ]
    
    var body: some View {
        
        VStack(alignment: .center) {
            
            ScrollView {
                
                LazyVGrid(columns: gridLayout) {
                    
                    NavigationLink(destination: DivisionsView()) {
                        NavWidget(imageUrl: "garvey", navTitle: "Pay Your Dues")
                    }
                    NavigationLink(destination: HistoryView()) {
                        NavWidget(imageUrl: "AL_1", navTitle: "Fundraisers")
                    }
                    NavigationLink(destination: NewsView()) {
                        NavWidget(imageUrl: "negroWorld_5", navTitle: "Legislation")
                    }
                    NavigationLink(destination: DivisionsView()) {
                        NavWidget(imageUrl: "AL_14", navTitle: "Submit An Idea")
                    }
                    NavigationLink(destination: DivisionsView()) {
                        NavWidget(imageUrl: "AL_14", navTitle: "ACL Vote")
                    }
                    NavigationLink(destination: DivisionsView()) {
                        NavWidget(imageUrl: "unia-acl", navTitle: "Sign In/Out")
                    }
                }
            }
//                .navigationBarHidden(true)
        }
//        .background(Image("PanAfricanFlag").aspectRatio(contentMode: .fit))
    }
}

struct SecondNavView_Previews: PreviewProvider {
    static var previews: some View {
        SecondNavView()
    }
}
