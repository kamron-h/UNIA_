//
//  MeetingsView.swift
//  UNIA-ACL
//
//  Created by Kamron Hopkins on 2/9/22.
//

import SwiftUI

struct MeetingsView: View {
    
    let meetings : [Meeting] = [
    
        Meeting(
            meetingDate: "Feb. 24th",
            meetingTitle: "- Officers Training"),
        Meeting(
            meetingDate: "March 2nd",
            meetingTitle: "- BlackCross History"),
        Meeting(
            meetingDate: "March 7th",
            meetingTitle: "- Orientation: Week 3"),
        Meeting(
            meetingDate: "March 12nd",
            meetingTitle: "- Officers Training 1026"),
        Meeting(
            meetingDate: "March 15th",
            meetingTitle: "- BlackCross History"),
        Meeting(
            meetingDate: "March 21st",
            meetingTitle: "- Orientation: Week 4"),
        Meeting(
            meetingDate: "March 27th",
            meetingTitle: "- Officers Training 1026"),
        
        
        Meeting(
            meetingDate: "April 3rd",
            meetingTitle: "- Officers Training"),
        Meeting(
            meetingDate: "April 10rth",
            meetingTitle: "- BlackCross History"),
        Meeting(
            meetingDate: "April 13rd",
            meetingTitle: "- Orientation: Week 5"),
        Meeting(
            meetingDate: "April 19th",
            meetingTitle: "- Officers Training 1026"),
        Meeting(
            meetingDate: "April 26th",
            meetingTitle: "- BlackCross History"),
        Meeting(
            meetingDate: "March 29th",
            meetingTitle: "- Orientation: Week 6"),
        Meeting(
            meetingDate: "May 1st",
            meetingTitle: "- Officers Training 1026")
    
    ]
    
    var body: some View {
        VStack {
            Spacer()
            List(meetings, id: \.self) { info in
                MeetingesView(
                    meetingDate: info.meetingDate, meetingTitle: info.meetingTitle)
            }
            Spacer()
            Spacer()
        }
        
    }
}

struct MeetingesView: View {
    
//    @State var meetingImage = "Feb. 24th"
    @State var meetingDate = "Feb. 24th"
    @State var meetingTitle = "- BlackCross History"
    
    var body: some View {
        
        NavigationLink {
            //destination
            HistoryView()
        } label: {
            HStack {
                Text("\(meetingDate)")
                    .bold()
                Text("\(meetingTitle)")
            }
        }
    }
}


struct Meeting : Identifiable, Hashable {
    var id : UUID = UUID()
    
//    let meetingImage : String
    let meetingDate : String
    let meetingTitle : String
    
    
    
}


struct MeetingsView_Previews: PreviewProvider {
    static var previews: some View {
        MeetingsView()
            .preferredColorScheme(.dark)
    }
}
