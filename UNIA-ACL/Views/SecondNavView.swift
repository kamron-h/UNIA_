//
//  SecondNavView.swift
//  UNIA-ACL
//
//  Created by Kamron Hopkins on 1/22/22.
//

import SwiftUI
import Firebase

struct SecondNavView: View {
    
    let firebaseAuth = Auth.auth()
    
    let gridLayout = [
        GridItem(.flexible()),
        GridItem(.flexible()),
    ]
    
    @State private var showSignInView = false
    
    var body: some View {
        
        VStack(alignment: .center) {
            
            ScrollView {
                
                LazyVGrid(columns: gridLayout) {
                    
                    NavigationLink(destination: DivisionsView()) {
                        NavWidget(imageUrl: "garvey", navTitle: "Pay Your Dues ")
                            .padding([.leading], 5.0)
                    }
                    NavigationLink(destination: HistoryView()) {
                        NavWidget(imageUrl: "AL_1", navTitle: "Fundraisers ")
                            .padding([.trailing], 5.3)
                    }
                    NavigationLink(destination: NewsView()) {
                        NavWidget(imageUrl: "negroWorld_5", navTitle: "Legislation ")
                            .padding([.leading], 5.0)
                    }
                    NavigationLink(destination: DivisionsView()) {
                        NavWidget(imageUrl: "AL_14", navTitle: "Submit An Idea ")
                            .padding([.trailing], 5.3)
                    }
                    NavigationLink(destination: DivisionsView()) {
                        NavWidget(imageUrl: "garvey1", navTitle: "ACL Vote ")
                            .padding([.leading], 5.0)
                    }
                    
                    
                    Button {
                        //If the member is logged in, sign them out.
                        if Auth.auth().currentUser != nil {
                            do {
                                try firebaseAuth.signOut()
                                print("Member signed out\n")
                                self.showSignInView = true
                            } catch let signOutError as NSError {
                                print("Error signing out: \n", signOutError)
                            }
                        }
                        
                    } label: {
                        NavWidget(imageUrl: "unia-acl", navTitle: "Sign In/Out ")
                            .padding([.trailing], 5.3)
                    }
                    NavigationLink(destination: Sign_InView(), isActive: $showSignInView) { EmptyView() }


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
            .preferredColorScheme(.dark)
    }
}
