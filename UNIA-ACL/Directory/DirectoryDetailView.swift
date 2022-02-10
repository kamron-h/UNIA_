//
//  DirectoryDetailView.swift
//  UNIA-ACL
//
//  Created by Kamron Hopkins on 1/27/22.
//

import SwiftUI

struct DirectoryDetailView: View {
    
//    @Binding var memList: [DirectoryView.Member]
    
    //    @Binding var id : String
    @State var sector : String
    @State var name : String
    //TODO: UPDATE MEMBER STRUCT WITH VARS BELOW
    //    @State var firstName : String
    //    @State var lastName : String
    
    @State var title : String
    
    @State var email : String
    @State var number : String
    @State var website : String
    @State var certifications : [String]
    @State var desgrees : [String]
    @State var skills : [String]
    @State var experience : String
    @State var creationDate : Date //Maybe timestamp
    @State var userImageURL : String
    //TODO: Change to userActive : Bool
    @State var userApproved : Bool
    
    
    @State private var certs = [String()]
    @State private var certsString = String()
    
    @State private var dgrees = [String()]
    @State private var dgreesString = String()
    
    var body: some View {
        ScrollView(.vertical) {
            Spacer()
            VStack{
                Image(userImageURL)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .clipShape(Circle())
            }
            Spacer(minLength: 36)
            VStack {
                Text("\(name) ")
                    .font(Font.custom("Caveat", size: 40))
                    .bold()
                    .padding(.leading, 13)
                    .padding(.bottom, 0.15)
                Text("\"\(title)\"")
                    .font(Font.custom("NanumPenScript-Regular", size: 20))
                    .padding(.leading, 13)
                
                
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
            .padding(.bottom)
            
            
            
            VStack {
                VStack {
                    Text("Website :")
                        .bold()
                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
                    Text(website)
                        .padding(.leading, 13)
                        .multilineTextAlignment(.leading)
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
                //                .background(Color.teal)
                
                
                VStack {
                    Spacer()
                    VStack {
                        
                        Text("Certifcations :")
                            .bold()
                            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
                        ForEach(certifications, id: \.self) { cert in
                            
                            HStack {
                                Text(cert)
                                    .foregroundColor(.white)
                                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
                                    .padding(.leading, 13)
                                //                                    .background(Color.teal)
                            }
                        }
                        
                        Text("Education :")
                            .bold()
                            .underline()
                            .foregroundColor(.yellow)
                            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
                        ForEach(desgrees, id: \.self) { degree in
                            Text(degree)
                                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
                                .padding(.leading, 13)
                            
                        }
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
                    Spacer()
                    //
                    VStack {
                        Text("Skills :")
                            .bold()
                            .foregroundColor(.yellow)
                            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
                        ForEach(skills, id: \.self) { skill in
                            Text(skill)
                                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
                                .padding(.leading, 13)
                            
                        }
                        Text("Experience :")
                            .bold()
                            .foregroundColor(.green)
                            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
                        Text(experience)
                            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
                            .padding(.leading, 13)
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
                    Spacer()
                }
            }
            .padding(.horizontal)
            
            
            
            
            
            Spacer()
            
            Button(action: {
                print("Send user a message button pressed..\n")
            }, label: {
                ZStack {
                    Capsule()
                        .foregroundColor(.red)
                    Text("Send \(name) a message")
                        .bold()
                        .foregroundColor(.yellow)
                        .padding()
                }
            })
                .frame(width: 300, height: 60, alignment: .center)
                .padding(.top, 39)
            Spacer()
        }
    }
}

struct DirectoryDetailView_Previews: PreviewProvider {
    static var previews: some View {
        DirectoryDetailView(sector: "Political", name: "Marcus Garvey", title: "President", email: "RaceFirst@garvey.com", number: "1(333)555-8888", website: "UNIA-ACLgovernment.com", certifications: ["Unity Building", "African Empowerment", "Fighting Oppression"], desgrees: ["Degree 1", "Degree 2", "Degree 3"], skills: ["Skill 1", "Skill 2", "Skill 3"], experience: "I have lots of experience...", creationDate: Date(), userImageURL: "garvey", userApproved: true)
            .preferredColorScheme(.dark)
    }
}
