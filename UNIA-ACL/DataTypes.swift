//
//  DataTypes.swift
//  UNIA-ACL
//
//  Created by Kamron Hopkins on 2/12/22.
//

import Foundation


struct Member: Hashable, Identifiable {
    let id = UUID()
    
    let title: String
    let division: String
    let firstName : String
    let lastName : String
    
    let dob : Date
    let bio : String
    let city : String
    let state : String
    let country : String
    
    let email: String
    let number: String
    let websites: [String]
    
    let certifications: [String]
    let desgrees: [String]
    let skills: [String]
    let experience: String
    
    let timestamp : Date
    let creationDate: String //TODO: Format date into string format
    let profileImageURL: String
    let approved: Bool
    let active : String
    //TODO: Need to add accountType to views...
    let accountType : String
    
}

//
struct User : Identifiable {
    
    var id : String
    
    let timestamp : Date
    
    let website : String
    let email : String
    let firstName : String
    let lastName : String
    let title : String
    let dob : Date
    let bio : String
    let city : String
    let state : String
    
    let education : [String]
    let skills : [String]
    
    let userApproved : Bool
    let profileImageUrl : String
    //TODO: Need to add accountType to views...
    let accountType : String
    
}


struct Media : Identifiable {
    var id : String
    
    let timestamp : Date
    let date : String
    
    let uRL : String
    let title : String
    let author : String
    let authorID : String
    let genre : String //All, NBM, Classics, PAN
    let description : String
    let coverImageURL : String
    
    let approved : Bool
    let starred : Bool
    
}


struct Message : Identifiable {
    var id : String
    
    let timestamp : Date
    let messageDate : String
    
    let memberID : String //If User is a member else leave blank.
    let memberName : String
    let subject : String
    let description : String
    
    let read : Bool
    let starred : Bool
    let archived : Bool
    
}
