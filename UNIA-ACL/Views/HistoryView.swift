//
//  HistoryView.swift
//  UNIA-ACL
//
//  Created by Kamron Hopkins on 1/16/22.
//

import SwiftUI

struct HistoryView: View {
    
    let historyList : [History] = [
    
        History(image: "garvey", title: "Garvey (1876-1935)", history: "Donec quis turpis justo. Mauris ultricies sapien sit amet finibus sodales. Morbi vel tortor euismod, egestas nulla sed, accumsan justo. Donec porta sollicitudin urna, malesuada rutrum ligula lobortis et. Nunc a venenatis nisl, nec porta risus. Aliquam non bibendum sem. Maecenas pretium ante lorem, id aliquam ante tincidunt in. Ut quis dictum neque, nec elementum lacus. Fusce ac vehicula quam. Nullam a tortor turpis. Maecenas porta, felis id vehicula laoreet, leo tortor molestie ante, ut finibus purus urna sed dui. Fusce ipsum dolor, commodo sollicitudin neque faucibus, molestie volutpat dui. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In condimentum tincidunt sem, vitae suscipit mauris consectetur eget. Mauris in sem non neque lacinia rhoncus vitae id eros. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae."),
        History(image: "PanAfricanFlag", title: "The Creation of U.N.I.A.", history: "Donec quis turpis justo. Mauris ultricies sapien sit amet finibus sodales. Morbi vel tortor euismod, egestas nulla sed, accumsan justo. Donec porta sollicitudin urna, malesuada rutrum ligula lobortis et. Nunc a venenatis nisl, nec porta risus. Aliquam non bibendum sem. Maecenas pretium ante lorem, id aliquam ante tincidunt in. Ut quis dictum neque, nec elementum lacus. Fusce ac vehicula quam. Nullam a tortor turpis. Maecenas porta, felis id vehicula laoreet, leo tortor molestie ante, ut finibus purus urna sed dui. Fusce ipsum dolor, commodo sollicitudin neque faucibus, molestie volutpat dui. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In condimentum tincidunt sem, vitae suscipit mauris consectetur eget. Mauris in sem non neque lacinia rhoncus vitae id eros. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae."),
        History(image: "negroWorld_5", title: "Controlling the Media Narrative", history: "Donec quis turpis justo. Mauris ultricies sapien sit amet finibus sodales. Morbi vel tortor euismod, egestas nulla sed, accumsan justo. Donec porta sollicitudin urna, malesuada rutrum ligula lobortis et. Nunc a venenatis nisl, nec porta risus. Aliquam non bibendum sem. Maecenas pretium ante lorem, id aliquam ante tincidunt in. Ut quis dictum neque, nec elementum lacus. Fusce ac vehicula quam. Nullam a tortor turpis. Maecenas porta, felis id vehicula laoreet, leo tortor molestie ante, ut finibus purus urna sed dui. Fusce ipsum dolor, commodo sollicitudin neque faucibus, molestie volutpat dui. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In condimentum tincidunt sem, vitae suscipit mauris consectetur eget. Mauris in sem non neque lacinia rhoncus vitae id eros. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae."),
        History(image: "negroWorld_3", title: "Black Group Economics", history: "Donec quis turpis justo. Mauris ultricies sapien sit amet finibus sodales. Morbi vel tortor euismod, egestas nulla sed, accumsan justo. Donec porta sollicitudin urna, malesuada rutrum ligula lobortis et. Nunc a venenatis nisl, nec porta risus. Aliquam non bibendum sem. Maecenas pretium ante lorem, id aliquam ante tincidunt in. Ut quis dictum neque, nec elementum lacus. Fusce ac vehicula quam. Nullam a tortor turpis. Maecenas porta, felis id vehicula laoreet, leo tortor molestie ante, ut finibus purus urna sed dui. Fusce ipsum dolor, commodo sollicitudin neque faucibus, molestie volutpat dui. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In condimentum tincidunt sem, vitae suscipit mauris consectetur eget. Mauris in sem non neque lacinia rhoncus vitae id eros. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae.")
    
    ]
    
    
    var body: some View {
        ScrollView {
            ForEach(historyList) { remark in
                HistoryWidget(image: remark.image, title: remark.title, history: remark.history)
            }
        }
    }
}


struct HistoryWidget: View {
    
    @State var image = "garvey"
    @State var title = "Garvey"
    @State var history = "Donec quis turpis justo. Mauris ultricies sapien sit amet finibus sodales. Morbi vel tortor euismod, egestas nulla sed, accumsan justo. Donec porta sollicitudin urna, malesuada rutrum ligula lobortis et. Nunc a venenatis nisl, nec porta risus. Aliquam non bibendum sem. Maecenas pretium ante lorem, id aliquam ante tincidunt in. Ut quis dictum neque, nec elementum lacus. Fusce ac vehicula quam. Nullam a tortor turpis. Maecenas porta, felis id vehicula laoreet, leo tortor molestie ante, ut finibus purus urna sed dui. Fusce ipsum dolor, commodo sollicitudin neque faucibus, molestie volutpat dui. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In condimentum tincidunt sem, vitae suscipit mauris consectetur eget. Mauris in sem non neque lacinia rhoncus vitae id eros. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae."
    
    
    var body: some View {
        
        Image(image)
            .resizable()
            .aspectRatio(contentMode: .fill)
            .cornerRadius(13)
            .padding(.horizontal, 5)
        Text(title)
            .bold()
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding([.top, .leading], 15)
            .padding()
        Text("   \(history)")
            .padding()
            .padding(.bottom)
    }
}

struct History : Identifiable {
    var id = UUID()
    
    let image : String
    let title : String
    let history : String
    
}


struct HistoryView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryView()
    }
}
