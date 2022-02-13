//
//  DivisionsView.swift
//  UNIA-ACL
//
//  Created by Kamron Hopkins on 1/16/22.
//

import SwiftUI

struct DivisionsView: View {
    
    struct Division: Hashable, Identifiable {
        let id = UUID()
        
        let name: String
        let state: String
        let city: String
        
        let birthday: String
        
        let email: String
        let number: String
        let website: String
        
        let members: [DirectoryView.Member]//array of members
        let membersCount: Int//array of members
        let bio: String
        let userImageURL: String
        let active: Bool
        
    }
    
    struct State: Identifiable {
        let state: String
        let region : String
        let divisions: [Division]
        let id = UUID()
    }
    
    private let divisions: [Division]  = [
    
        Division(
            name: "106 - BarcaClarke",
            state: "Baltimore",
            city: "Maryland",
            birthday: "00/00/0000",
            email: "BarcaClarke@mail.com",
            number: "1(333)555-7777",
            website: "Unia-Acl_government.com",
            members: [
                DirectoryView.Member(
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
                DirectoryView.Member(
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
                DirectoryView.Member(
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
                DirectoryView.Member(
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
                DirectoryView.Member(
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
                DirectoryView.Member(
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
                DirectoryView.Member(
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
                DirectoryView.Member(
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
                     ],
            membersCount: 5,
            bio: "bio",
            userImageURL: "imageurl",
            active: true),
    
        Division(
            name: "110 - GarveyNkrumba",
            state: "New York",
            city: "New York",
            birthday: "00/00/0000",
            email: "BarcaClarke@mail.com",
            number: "1(333)555-7777",
            website: "Unia-Acl_government.com",
            members: [
                DirectoryView.Member(
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
                DirectoryView.Member(
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
                DirectoryView.Member(
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
                DirectoryView.Member(
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
                DirectoryView.Member(
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
                DirectoryView.Member(
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
                DirectoryView.Member(
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
                DirectoryView.Member(
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
            ],
            membersCount: 5,
            bio: "bio",
            userImageURL: "imageurl",
            active: true),
        
        Division(
            name: "113 - KhalidShabazz",
            state: "North Carolina",
            city: "Greenville",
            birthday: "00/00/0000",
            email: "BarcaClarke@mail.com",
            number: "1(333)555-7777",
            website: "Unia-Acl_government.com",
            members: [
                DirectoryView.Member(
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
                DirectoryView.Member(
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
                DirectoryView.Member(
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
                DirectoryView.Member(
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
                DirectoryView.Member(
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
                DirectoryView.Member(
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
                DirectoryView.Member(
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
                DirectoryView.Member(
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
            ],
            membersCount: 5,
            bio: "bio",
            userImageURL: "imageurl",
            active: true),
    
    
    
    ]
    
    private let usStates: [String]  = [
        "Alabama",
        "Alaska",
        "Arizona",
        "Arkansas",
        "California",
        "Colorado",
        "Connecticut",
        "Delaware",
        "Florida",
        "Georgia",
        "Hawaii",
        "Idaho",
        "Illinois",
        "Indiana",
        "Iowa",
        "Kansas",
        "Kentucky",
        "Louisiana",
        "Maine",
        "Maryland",
        "Massachusetts",
        "Michigan",
        "Minnesota",
        "Mississippi",
        "Missouri",
        "Montana",
        "Nebraska",
        "Nevada",
        "New Hampshire",
        "New Jersey",
        "New York",
        "North Carolina",
        "Pennsylvania",
        "Rhode Island",
        "South Carolina",
        "Virginia",
        "Washington"]
    
//    @State private var singleSelection : UUID?
    
    var body: some View {
        List {
            ForEach(divisions) { divsion in
                Section(header: Text("\(divsion.state)")) {
                    ForEach(divisions) { div in
                        
                        if div.state == divsion.state {
                            
                            NavigationLink {
                                //
                                DirectoryView(usDivision: div.name)
//                                DivisionList_View(id: div.member, sector: <#T##String#>, name: <#T##String#>, title: <#T##String#>, email: <#T##String#>, number: <#T##String#>, website: <#T##String#>, certifications: <#T##[String]#>, desgrees: <#T##[String]#>, skills: <#T##[String]#>, experience: <#T##String#>, creationDate: <#T##Date#>, userImageURL: <#T##String#>, userApproved: <#T##Bool#>, body: <#T##View#>)
                            } label: {
                                Text("\(div.name)")
                                //
                            }
                        }
                        
//                        Text("\(div.name)")
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
                }
            }
        }
        
        .navigationTitle("UNIA Directory")
        .toolbar { EditButton() }
        
    }
}


struct DivisionsView_Previews: PreviewProvider {
    static var previews: some View {
        DivisionsView()
            .preferredColorScheme(.dark)
//        DivisionList_View()
//        DivisionList_View(id: .constant(UUID()), sector: .constant("sector"), name: .constant("sector"), title: .constant("sector"), email: .constant("sector"), number: .constant("sector"), website: .constant("sector"), certifications: .constant(["sector"]), desgrees: .constant(["sector"]), skills: .constant(["sector"]), experience: .constant("sector"), creationDate: .constant(Date()), userImageURL: .constant("sector"), userApproved: .constant(true))
            
    }
}
