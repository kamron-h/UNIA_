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
                    certifications: ["Unity Building", "African Empowerment", "Fighting Oppression"],
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
                    certifications: ["Unity Building", "African Empowerment", "Fighting Oppression"],
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
                    certifications: ["Unity Building", "African Empowerment", "Fighting Oppression"],
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
                    certifications: ["Unity Building", "African Empowerment", "Fighting Oppression"],
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
                    certifications: ["Unity Building", "African Empowerment", "Fighting Oppression"],
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
                    certifications: ["Unity Building", "African Empowerment", "Fighting Oppression"],
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
                    certifications: ["Unity Building", "African Empowerment", "Fighting Oppression"],
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
                    certifications: ["Unity Building", "African Empowerment", "Fighting Oppression"],
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
                    certifications: ["Unity Building", "African Empowerment", "Fighting Oppression"],
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
                    certifications: ["Unity Building", "African Empowerment", "Fighting Oppression"],
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
                    certifications: ["Unity Building", "African Empowerment", "Fighting Oppression"],
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
                    certifications: ["Unity Building", "African Empowerment", "Fighting Oppression"],
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
    
    let skills : [String] = [
        
        "Accounting",
        "Agriculture",
        "Marketing",
        "Law",
        "Journalism",
        "Film Making",
        "Music Production",
    ]
    
    @State var usDivision = ""
    
    var body: some View {
        
        if usDivision == "" {
            
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
            
        } else {
            
            //Display sortedDivision if not empty
            List(selection: $singleSelection){
                ForEach(uniaSectors) { sector in
                    
                    ForEach(sector.members) { member in
                        
                        Text("Replace w/ NavigationLink")
                        Text(member.title)
                        
//                        NavigationLink(
//                            member.name,
//                            destination: DirectoryDetailView(
//                                sector: member.sector,
//                                name: member.name,
//                                title: member.title,
//                                email: member.email,
//                                number: member.number,
//                                website: member.website,
//                                certifications: member.certifications,
//                                desgrees: member.desgrees,
//                                skills: member.skills,
//                                experience: member.experience,
//                                creationDate: member.creationDate,
//                                userImageURL: member.userImageURL,
//                                userApproved: member.userApproved)
//                        )

                        
                        
                        
                    }
                    
//                    Section(header: Text("\(sector.sectorType)")) {
//                        ForEach(sector.members) { member in
//
//                            NavigationLink(
//                                member.name,
//                                destination: DirectoryDetailView(
//                                    sector: member.sector,
//                                    name: member.name,
//                                    title: member.title,
//                                    email: member.email,
//                                    number: member.number,
//                                    website: member.website,
//                                    certifications: member.certifications,
//                                    desgrees: member.desgrees,
//                                    skills: member.skills,
//                                    experience: member.experience,
//                                    creationDate: member.creationDate,
//                                    userImageURL: member.userImageURL,
//                                    userApproved: member.userApproved)
//                            )
//
//                        }
//                    }
                }
            }

            .navigationTitle("UNIA Directory")
            .toolbar { EditButton() }
        }
        
        
        
    }
}






struct DirectoryView_Previews: PreviewProvider {
    static var previews: some View {
        DirectoryView()
    }
}
