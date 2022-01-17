//
//  NavView.swift
//  UNIA-ACL
//
//  Created by Kamron Hopkins on 1/16/22.
//

import SwiftUI

struct NavView: View {
    
    let afrikanGoldColor = Color.orange
    let garveyGreenColor = Color(UIColor(displayP3Red: 0.0, green: 0.4, blue: 0.10, alpha: 1))
    let bloodredColor = Color(UIColor(displayP3Red: 0.70, green: 0.0, blue: 0.12, alpha: 1))
    let darkMoonGrayColor = Color(UIColor(displayP3Red: 0.17, green: 0.17, blue: 0.17, alpha: 1))
    
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
        
        VStack(alignment: .center) {
            
            NavigationView(content: {
                
                ScrollView {
                    
                    LazyVGrid(columns: gridLayout) {
                        
                        NavigationLink(destination: DivisionsView()) {
                            NavWidget(imageUrl: "garvey", navTitle: "Who Is The UNIA?")
                        }
                        NavigationLink(destination: HistoryView()) {
                            NavWidget(imageUrl: "AL_1", navTitle: "Our History")
                        }
                        NavigationLink(destination: NewsView()) {
                            NavWidget(imageUrl: "unia-acl", navTitle: "UNIA News")
                        }
                        
                        NavigationLink(destination: DivisionsView()) {
                            NavWidget(imageUrl: "unia-acl", navTitle: "Meeting Links")
                        }
                        NavigationLink(destination: DivisionsView()) {
                            NavWidget(imageUrl: "unia-acl", navTitle: "Divisions")
                        }
                        NavigationLink(destination: DirectoryView()) {
                            NavWidget(imageUrl: "unia-acl", navTitle: "Skills/Job Directory")
                        }
                        NavigationLink(destination: OrientationView()) {
                            NavWidget(imageUrl: "AL_12", navTitle: "Orientation")
                        }
                        NavigationLink(destination: DivisionsView()) {
                            NavWidget(imageUrl: "unia-acl", navTitle: "Skills/Job Directory")
                        }
                        
                        
                        
                    }
                }
            })
            .navigationBarBackButtonHidden(true)
            .navigationBarHidden(true)
        }
        .preferredColorScheme(.dark)
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
    
    @State var imageUrl = "sdfsdf"
    @State var navTitle = "sdfsdf"
    
    
    var body: some View {
        
        VStack
        {
            
            ZStack {
//                RoundedRectangle(cornerRadius: 10.0)
                VStack{
                    Image(imageUrl)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .blur(radius: 2, opaque: false)
                }
                
                    
                Text(navTitle)
                    .multilineTextAlignment(.center)
                    .font(.custom("Rawkbrush", size: 21))
                    .offset(y: 43)
                
            }
            .clipShape(RoundedRectangle(cornerSize: CGSize.init(width: 8, height: 10)))
            .frame(width: width, height: height)
            .background(garveyGreenColor)
            .padding(.top)
        }
        
        
        
        .padding([.leading, .trailing, .bottom], 8.0)
        
        
    }
}







struct NavView_Previews: PreviewProvider {
    static var previews: some View {
        NavView()
    }
}
