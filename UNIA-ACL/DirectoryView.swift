//
//  DirectoryView.swift
//  UNIA-ACL
//
//  Created by Kamron Hopkins on 1/16/22.
//

import SwiftUI

struct DirectoryView: View {
    
    
    struct Member: Hashable, Identifiable {
        let id = UUID()
        
        let sector: String
        let name: String
        let title: String
        
        let email: String
        let number: String
        let website: String
        
        let certifications: [String]
        let desgrees: [String]
        let skills: [String]
        let experience: String
        
        let creationDate: Date //Maybe timestamp
        let userImageURL: String
        let userApproved: Bool
        
    }
    
    struct UNIASector: Identifiable {
        let sectorType: String
        let members: [Member]
        let id = UUID()
    }
    
    private let uniaSectors: [UNIASector]  = [
        UNIASector(
            sectorType: "Agriculture/Farming",
            members: [
                Member(
                    sector: "Agriculture",
                    name: "Marcus Garvey",
                    title: "President of UNIA",
                    email: "GaveyM@mail.com",
                    number: "1(999)333-5555",
                    website: "Unia-Acl_government.com",
                    certifications: ["Agri-1", "Agri-2", "Agri-1"],
                    desgrees: ["Degree-1", "Degree-2", "Degree-1"],
                    skills: ["Skill-1", "Skill-2", "Skill-1"],
                    experience: "One or more paragraph's of information",
                    creationDate: Date(),
                    userImageURL: "garvey",
                    userApproved: true),
                Member(
                    sector: "Agriculture",
                    name: "Marcus Garvey",
                    title: "President of UNIA",
                    email: "GaveyM@mail.com",
                    number: "1(999)333-5555",
                    website: "Unia-Acl_government.com",
                    certifications: ["Agri-1", "Agri-2", "Agri-1"],
                    desgrees: ["Degree-1", "Degree-2", "Degree-1"],
                    skills: ["Skill-1", "Skill-2", "Skill-1"],
                    experience: "One or more paragraph's of information",
                    creationDate: Date(),
                    userImageURL: "garvey",
                    userApproved: true),
                Member(
                    sector: "Agriculture",
                    name: "Marcus Garvey",
                    title: "President of UNIA",
                    email: "GaveyM@mail.com",
                    number: "1(999)333-5555",
                    website: "Unia-Acl_government.com",
                    certifications: ["Agri-1", "Agri-2", "Agri-1"],
                    desgrees: ["Degree-1", "Degree-2", "Degree-1"],
                    skills: ["Skill-1", "Skill-2", "Skill-1"],
                    experience: "One or more paragraph's of information",
                    creationDate: Date(),
                    userImageURL: "garvey",
                    userApproved: true),
                Member(
                    sector: "Agriculture",
                    name: "Marcus Garvey",
                    title: "President of UNIA",
                    email: "GaveyM@mail.com",
                    number: "1(999)333-5555",
                    website: "Unia-Acl_government.com",
                    certifications: ["Agri-1", "Agri-2", "Agri-1"],
                    desgrees: ["Degree-1", "Degree-2", "Degree-1"],
                    skills: ["Skill-1", "Skill-2", "Skill-1"],
                    experience: "One or more paragraph's of information",
                    creationDate: Date(),
                    userImageURL: "garvey",
                    userApproved: true)
            ]),
        UNIASector(
            sectorType: "Business",
            members: [
                Member(
                    sector: "Business",
                    name: "Marcus Garvey",
                    title: "President of UNIA",
                    email: "GaveyM@mail.com",
                    number: "1(999)333-5555",
                    website: "Unia-Acl_government.com",
                    certifications: ["Agri-1", "Agri-2", "Agri-1"],
                    desgrees: ["Degree-1", "Degree-2", "Degree-1"],
                    skills: ["Skill-1", "Skill-2", "Skill-1"],
                    experience: "One or more paragraph's of information",
                    creationDate: Date(),
                    userImageURL: "garvey",
                    userApproved: true),
                Member(
                    sector: "Business",
                    name: "Marcus Garvey",
                    title: "President of UNIA",
                    email: "GaveyM@mail.com",
                    number: "1(999)333-5555",
                    website: "Unia-Acl_government.com",
                    certifications: ["Agri-1", "Agri-2", "Agri-1"],
                    desgrees: ["Degree-1", "Degree-2", "Degree-1"],
                    skills: ["Skill-1", "Skill-2", "Skill-1"],
                    experience: "One or more paragraph's of information",
                    creationDate: Date(),
                    userImageURL: "garvey",
                    userApproved: true)
            ]),
        UNIASector(
            sectorType: "Engineering",
            members: [
                Member(
                    sector: "Engineering",
                    name: "Marcus Garvey",
                    title: "President of UNIA",
                    email: "GaveyM@mail.com",
                    number: "1(999)333-5555",
                    website: "Unia-Acl_government.com",
                    certifications: ["Agri-1", "Agri-2", "Agri-1"],
                    desgrees: ["Degree-1", "Degree-2", "Degree-1"],
                    skills: ["Skill-1", "Skill-2", "Skill-1"],
                    experience: "One or more paragraph's of information",
                    creationDate: Date(),
                    userImageURL: "garvey",
                    userApproved: true),
                Member(
                    sector: "Engineering",
                    name: "Marcus Garvey",
                    title: "President of UNIA",
                    email: "GaveyM@mail.com",
                    number: "1(999)333-5555",
                    website: "Unia-Acl_government.com",
                    certifications: ["Agri-1", "Agri-2", "Agri-1"],
                    desgrees: ["Degree-1", "Degree-2", "Degree-1"],
                    skills: ["Skill-1", "Skill-2", "Skill-1"],
                    experience: "One or more paragraph's of information",
                    creationDate: Date(),
                    userImageURL: "garvey",
                    userApproved: true),
                Member(
                    sector: "Engineering",
                    name: "Marcus Garvey",
                    title: "President of UNIA",
                    email: "GaveyM@mail.com",
                    number: "1(999)333-5555",
                    website: "Unia-Acl_government.com",
                    certifications: ["Agri-1", "Agri-2", "Agri-1"],
                    desgrees: ["Degree-1", "Degree-2", "Degree-1"],
                    skills: ["Skill-1", "Skill-2", "Skill-1"],
                    experience: "One or more paragraph's of information",
                    creationDate: Date(),
                    userImageURL: "garvey",
                    userApproved: true),
                Member(
                    sector: "Engineering",
                    name: "Marcus Garvey",
                    title: "President of UNIA",
                    email: "GaveyM@mail.com",
                    number: "1(999)333-5555",
                    website: "Unia-Acl_government.com",
                    certifications: ["Agri-1", "Agri-2", "Agri-1"],
                    desgrees: ["Degree-1", "Degree-2", "Degree-1"],
                    skills: ["Skill-1", "Skill-2", "Skill-1"],
                    experience: "One or more paragraph's of information",
                    creationDate: Date(),
                    userImageURL: "garvey",
                    userApproved: true),
            ]),
        UNIASector(
            sectorType: "Marketing",
            members: [
                Member(
                    sector: "Marketing",
                    name: "Marcus Garvey",
                    title: "President of UNIA",
                    email: "GaveyM@mail.com",
                    number: "1(999)333-5555",
                    website: "Unia-Acl_government.com",
                    certifications: ["Agri-1", "Agri-2", "Agri-1"],
                    desgrees: ["Degree-1", "Degree-2", "Degree-1"],
                    skills: ["Skill-1", "Skill-2", "Skill-1"],
                    experience: "One or more paragraph's of information",
                    creationDate: Date(),
                    userImageURL: "garvey",
                    userApproved: true),
                Member(
                    sector: "Marketing",
                    name: "Marcus Garvey",
                    title: "President of UNIA",
                    email: "GaveyM@mail.com",
                    number: "1(999)333-5555",
                    website: "Unia-Acl_government.com",
                    certifications: ["Agri-1", "Agri-2", "Agri-1"],
                    desgrees: ["Degree-1", "Degree-2", "Degree-1"],
                    skills: ["Skill-1", "Skill-2", "Skill-1"],
                    experience: "One or more paragraph's of information",
                    creationDate: Date(),
                    userImageURL: "garvey",
                    userApproved: true),
            ])
        
    ]
    
    
    
    
    
    struct Sea: Hashable, Identifiable {
        let name: String
        let id = UUID()
    }
    struct OceanRegion: Identifiable {
        let name: String
        let seas: [Sea]
        let id = UUID()
    }
    private let oceanRegions: [OceanRegion]  = [
        OceanRegion(name: "Pacific",
                    seas: [Sea(name: "Australasian Mediterranean"),
                           Sea(name: "Philippine"),
                           Sea(name: "Coral"),
                           Sea(name: "South China")]),
        OceanRegion(name: "Atlantic",
                    seas: [Sea(name: "American Mediterranean"),
                           Sea(name: "Sargasso"),
                           Sea(name: "Caribbean")]),
        OceanRegion(name: "Indian",
                    seas: [Sea(name: "Bay of Bengal")]),
        OceanRegion(name: "Southern",
                    seas: [Sea(name:"Weddell")]),
        OceanRegion(name: "Arctic",
                    seas: [Sea(name: "Greenland")])
    ]
    @State private var singleSelection : UUID?
    
    
    
    
    
    
    
    
    let directoryList : [String] = [
        
        "Hello, World!",
        "Hello, World!",
        "Hello, World!",
        "Hello, World!",
        "Hello, World!",
    ]
    
    let skills : [String] = [
        
        "Accounting",
        "Agriculture",
        "Marketing",
        "Law",
        "Journalism",
        "Film Making",
        "Music Production",
    ]
    
    
    var body: some View {
        
        List(selection: $singleSelection){
            ForEach(uniaSectors) { sector in
                Section(header: Text("\(sector.sectorType)")) {
                    ForEach(sector.members) { member in
                        
                        NavigationLink(
                            member.name,
                            destination: DirectoryDetailView(
                                sector: member.sector,
                                name: member.name,
                                title: member.title,
                                email: member.email,
                                number: member.number,
                                website: member.website,
                                certifications: member.certifications,
                                desgrees: member.desgrees,
                                skills: member.skills,
                                experience: member.experience,
                                creationDate: member.creationDate,
                                userImageURL: member.userImageURL,
                                userApproved: member.userApproved)
                        )
                        
                    }
                }
            }
        }
        .navigationTitle("UNIA Directory")
        .toolbar { EditButton() }
        
//        List(directoryList , id: \.self) { item in
//        List() {
//
//            Section(header: Text("Accounting")) {
//                Text("Accounting - Assata Shakur (Active)")
//                Text("Finacial Planning - Amun Ra")
//                Text("Taxes - Harriet Tubman (Active)")
//
//            }
//            Section(header: Text("Electricity")) {
//                Text("Commercial - Amun Ra")
//                Text("Residential - Amun Ra")
//                Text("Contractor - Amun Ra")
//            }
//            Section(header: Text("Engineering")) {
//                Text("Machincal Enginerring - Malcom X (Active)")
//                Text("Software Enginerring - Idi Amin")
//                Text("Software Enginerring - Thomas Sankara (Active)")
//                Text("Software Enginerring - Patrice Lumumba (Active)")
//            }
//            Section(header: Text("Media")) {
//                Text("Digital Films - Thomas Sankara (Active)")
//                Text("Digital Art - Thomas Sankara")
//                Text("Digital Marketing - Thomas Sankara (Active)")
//                Text("Digital PR - Thomas Sankara")
//            }
//            Section(header: Text("Auto Mechanic")) {
//                Text("Auto - Thomas (Active)")
//                Text("Electric Media - Thomas")
//                Text("Commerical Trucks - Thomas (Active)")
//                Text("Boats - Thomas")
//            }
//            Section(header: Text("Nurses")) {
//                Text("Traveling - Thomas")
//                Text("Home Health - Thomas")
//                Text("Pediatric - Thomas")
//                Text("Hospice - Thomas")
//            }
//            Section(header: Text("Plumbing")) {
//                Text("Commercial - Thomas Sankara")
//                Text("Residential - Thomas")
//                Text("Contractor - Thomas")
//            }
//            Section(header: Text("Sciences")) {
//                Text("Biologist - Thomas")
//                Text("Oceanography - Thomas")
//                Text("Nurology - Thomas")
//                Text("Chemist - Thomas")
//            }
//
//
//
//        }
//        .listStyle(.grouped)
//        .preferredColorScheme(.dark)
    }
}

struct DirectoryDetailView: View {
    
//    @Binding var id : String
    @State var sector : String
    @State var name : String
    
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
    @State var userApproved : Bool
    
    @State private var certs = [String()]
    @State private var dgrees = [String()]
    
    var body: some View {
        ScrollView(.vertical) {
            VStack{
                Image(userImageURL)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .clipShape(Circle())
            }
            VStack {
                Text(name)
                Text(title)
                Text(email)
            }
            VStack {
                Text(number)
                Text(website)
            }
            VStack {
//                Text(certifications)
                ForEach(certifications, id: \.self) { cert in
                    Text(cert)
                    
                }
                ForEach(desgrees, id: \.self) { degree in
                    Text(degree)
                    
                }
            }
            VStack {
                Text(skills[0])
                Text(experience)
            }
        }
    }
}




struct DirectoryView_Previews: PreviewProvider {
    static var previews: some View {
        DirectoryView()
    }
}
