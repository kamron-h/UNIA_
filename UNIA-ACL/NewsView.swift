//
//  NewsView.swift
//  UNIA-ACL
//
//  Created by Kamron Hopkins on 1/16/22.
//

import SwiftUI

struct NewsView: View {
    
    let news : [NewsStory] = [
    
        NewsStory(
            imageUrl: "garvey1",
            date: "02/14/22",
            title: "Was The Tanzanian Presidents Death Natural?",
            story: "Aliquam non bibendum sem. Maecenas pretium ante lorem, id aliquam ante tincidunt in. Ut quis dictum neque, nec elementum lacus. Fusce ac vehicula quam. Nullam a tortor turpis. Maecenas porta, felis id vehicula laoreet, leo tortor molestie ante, ut finibus purus urna sed dui. Fusce ipsum dolor, commodo sollicitudin neque faucibus, molestie volutpat dui. Class apt"),
        NewsStory(
            imageUrl: "garvey",
            date: "01/10/22",
            title: "Fight for Your Liberation?",
            story: "Aliquam non bibendum sem. Maecenas pretium ante lorem, id aliquam ante tincidunt in. Ut quis dictum neque, nec elementum lacus. Fusce ac vehicula quam. Nullam a tortor turpis. Maecenas porta, felis id vehicula laoreet, leo tortor molestie ante, ut finibus purus urna sed dui. Fusce ipsum dolor, commodo sollicitudin neque faucibus, molestie volutpat dui. Class apt"),
        NewsStory(
            imageUrl: "garvey",
            date: "10/10/10",
            title: "Garvey & Garveyism",
            story: "Aliquam non bibendum sem. Maecenas pretium ante lorem, id aliquam ante tincidunt in. Ut quis dictum neque, nec elementum lacus. Fusce ac vehicula quam. Nullam a tortor turpis. Maecenas porta, felis id vehicula laoreet, leo tortor molestie ante, ut finibus purus urna sed dui. Fusce ipsum dolor, commodo sollicitudin neque faucibus, molestie volutpat dui. Class apt"),
        NewsStory(
            imageUrl: "garvey",
            date: "10/10/10",
            title: "Garvey & Garveyism",
            story: "Aliquam non bibendum sem. Maecenas pretium ante lorem, id aliquam ante tincidunt in. Ut quis dictum neque, nec elementum lacus. Fusce ac vehicula quam. Nullam a tortor turpis. Maecenas porta, felis id vehicula laoreet, leo tortor molestie ante, ut finibus purus urna sed dui. Fusce ipsum dolor, commodo sollicitudin neque faucibus, molestie volutpat dui. Class apt"),
        NewsStory(
            imageUrl: "garvey",
            date: "10/10/10",
            title: "Garvey & Garveyism",
            story: "Aliquam non bibendum sem. Maecenas pretium ante lorem, id aliquam ante tincidunt in. Ut quis dictum neque, nec elementum lacus. Fusce ac vehicula quam. Nullam a tortor turpis. Maecenas porta, felis id vehicula laoreet, leo tortor molestie ante, ut finibus purus urna sed dui. Fusce ipsum dolor, commodo sollicitudin neque faucibus, molestie volutpat dui. Class apt"),
        NewsStory(
            imageUrl: "garvey",
            date: "10/10/10",
            title: "Garvey & Garveyism",
            story: "Aliquam non bibendum sem. Maecenas pretium ante lorem, id aliquam ante tincidunt in. Ut quis dictum neque, nec elementum lacus. Fusce ac vehicula quam. Nullam a tortor turpis. Maecenas porta, felis id vehicula laoreet, leo tortor molestie ante, ut finibus purus urna sed dui. Fusce ipsum dolor, commodo sollicitudin neque faucibus, molestie volutpat dui. Class apt"),
        NewsStory(
            imageUrl: "garvey",
            date: "10/10/10",
            title: "Garvey & Garveyism",
            story: "Aliquam non bibendum sem. Maecenas pretium ante lorem, id aliquam ante tincidunt in. Ut quis dictum neque, nec elementum lacus. Fusce ac vehicula quam. Nullam a tortor turpis. Maecenas porta, felis id vehicula laoreet, leo tortor molestie ante, ut finibus purus urna sed dui. Fusce ipsum dolor, commodo sollicitudin neque faucibus, molestie volutpat dui. Class apt"),
        
    ]
    
    
    var body: some View {
        ScrollView {
            ForEach(news) { clip in
                NewsWidget(
                    image: clip.imageUrl,
                    date: clip.date,
                    title: clip.title,
                    story: clip.story)
            }
        }

    }
}




struct NewsWidget : View {
    
    @State var image = "garvey"
    @State var date = "10/10/10"
    @State var title = "Garvey"
    @State var story = "Don"
    
    var body: some View {
        
        Image(image)
            .resizable()
            .aspectRatio(contentMode: .fill)
            .cornerRadius(13)
            .padding(.horizontal, 5)
        Text(date)
        Text(title)
            .bold()
            .frame(maxWidth: .infinity, alignment: .center)
            .padding()
        Text("   \(story)")
            .padding()
            .padding(.bottom)
        
    }
}

struct NewsStory : Identifiable {
    var id = UUID()
    
    let imageUrl : String
    let date : String
    let title : String
    let story : String
    
}

struct NewsView_Previews: PreviewProvider {
    static var previews: some View {
        NewsView()
            .preferredColorScheme(.dark)
    }
}
