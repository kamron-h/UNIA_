//
//  NavView.swift
//  UNIA-ACL
//
//  Created by Kamron Hopkins on 1/16/22.
//

import SwiftUI
import Firebase

struct NavView: View {
    
    let afrikanGoldColor = Color.orange
    let garveyGreenColor = Color(UIColor(displayP3Red: 0.0, green: 0.4, blue: 0.10, alpha: 1))
    let bloodredColor = Color(UIColor(displayP3Red: 0.70, green: 0.0, blue: 0.12, alpha: 1))
    let darkMoonGrayColor = Color(UIColor(displayP3Red: 0.17, green: 0.17, blue: 0.17, alpha: 1))
    let garveyPeachColor = Color(red: 221, green: 221, blue: 146)
    
    let gridLayout = [
        GridItem(.flexible()),
        GridItem(.flexible()),
    ]
    
    let navWidgets : [NavWidget] = [
    
        NavWidget(),
        NavWidget(),
        NavWidget(),
        NavWidget(),
        NavWidget(),
    ]
    
    var body: some View {
        NavigationView {
            
            VStack(alignment: .center) {
                
                ScrollView {
                    Spacer()
                    
                    LazyVGrid(columns: gridLayout) {
                        NavigationLink(destination: HistoryView()) {
                            NavWidget(imageUrl: "garvey2", navTitle: "Our History ", shadow: Color.gray)
                                .padding([.leading], 5.0)
                        }
                        NavigationLink(destination: NewsView()) {
                            NavWidget(imageUrl: "negroWorld_5", navTitle: "U.N.I.A. News ", shadow: Color.gray)
                                .padding([.trailing], 5.3)
                            
                        }
                        NavigationLink(destination: MeetingsView ()) {
                            NavWidget(imageUrl: "106-BC", navTitle: "Meetings ", shadow: Color.clear)
                                .padding([.leading], 5.0)
                        }
                        NavigationLink(destination: DivisionsView()) {
                            NavWidget(imageUrl: "unia-acl", navTitle: "Divisions ", shadow: Color.gray)
                                .padding([.trailing], 5.3)
                        }
                        NavigationLink(destination: DirectoryView()) {
                            NavWidget(imageUrl: "negroWorld_3", navTitle: "Job Directory ", shadow: Color.gray)
                                .padding([.leading], 5.0)
                        }
                        NavigationLink(destination: OrientationView()) {
                            NavWidget(imageUrl: "AL_12", navTitle: "Orientation ", shadow: Color.gray)
                                .padding([.trailing], 5.3)
                        }
                    }
                    
                    VStack(alignment: .center) {
                        NavigationLink(destination: SecondNavView()) {
                            NavWidget(imageUrl: "unia-acl", navTitle: "More... ", shadow: Color.gray)
                        }
                    }
                    .frame(maxWidth: .infinity, alignment: .center)
                }
                
                //                .background(Image("PanAfricanFlag").aspectRatio(contentMode: .fit))
            }
            .preferredColorScheme(.dark)
            
        }
        .navigationBarHidden(true)
    }
}



struct NavWidget : View {
    
    let afrikanGoldColor = Color.orange
    let garveyGreenColor = Color(UIColor(displayP3Red: 0.0, green: 0.4, blue: 0.10, alpha: 1))
    let bloodredColor = Color(UIColor(displayP3Red: 0.70, green: 0.0, blue: 0.12, alpha: 1))
    let darkMoonGrayColor = Color(UIColor(displayP3Red: 0.17, green: 0.17, blue: 0.17, alpha: 1))
    
    let width = UIScreen.main.bounds.width * 0.45
    let height = UIScreen.main.bounds.height * 0.175
    let roundedEdgeSize : CGFloat = 30.0
    
    let gridLayout = [
        GridItem(.flexible()),
        GridItem(.flexible()),
    ]
    
    let screenSize = UIScreen.main.bounds
    let screenWidth = UIScreen.main.bounds.width
    let screenHeight = UIScreen.main.bounds.height
    
    @State var imageUrl = "sdfsdf"
    @State var navTitle = "sdfsdf"
    @State var shadow = Color.gray
    
    
    var body: some View {
        
        VStack
        {
            
            VStack {
//                RoundedRectangle(cornerRadius: 10.0)
                VStack{
                    Image(imageUrl)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
//                        .blur(radius: 2, opaque: false)
                        .frame(width: screenWidth * 0.47, height: screenWidth * 0.47)
                }
                .clipShape(RoundedRectangle(cornerSize: CGSize.init(width: 8, height: 10)))
                .shadow(color: shadow.opacity(0.35), radius: 1, x: 3, y: 3)
                
                Spacer()
                Text(navTitle)
                    .multilineTextAlignment(.center)
                    .font(.custom("Caveat-Bold", size: 26))
                    .foregroundColor(afrikanGoldColor)
            }
            
//            .frame(width: width, height: height)
//            .background(garveyGreenColor)
//            .padding(.top)
        }
        
        
        
        .padding([.leading, .trailing], 5.0)
        .padding([.bottom], 5.0)
        
    }
}







struct NavView_Previews: PreviewProvider {
    static var previews: some View {
        NavView()
    }
}
