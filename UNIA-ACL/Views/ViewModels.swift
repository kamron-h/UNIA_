//
//  ViewModels.swift
//  UNIA-ACL
//
//  Created by Kamron Hopkins on 2/12/22.
//

import Foundation
import Firebase

class MemberModel : ObservableObject {
    
    @Published var model = [Member]()
    
    //Get ref to the database
    let db = Firestore.firestore()
    
    let currentUser = Auth.auth().currentUser
    
    //Sign User in w/ their email & password
    func logMemberIn(email: String, password: String) {
        
        Auth.auth().signIn(withEmail: email, password: password) { authResult, error in
            if error != nil {
                print(error!.localizedDescription)
            } else {
                print("Successfully logged in Beta User")
            }
            // ...
        }
        
//        Auth.auth().signIn(withEmail: "tupac@123.com", password: "123456") { authResult, error in
//            if error != nil {
//                print(error!.localizedDescription)
//            } else {
//                print("Successfully logged in Beta User")
//            }
//            // ...
//        }
    }
    
    
    func createMember(
    
    title: String,
    division: String,
    firstName : String,
    lastName : String,
    
    dob : Date,
    bio : String,
    city : String,
    state : String,
    country : String,
    
    email: String,
    number: String,
    websites: [String],
    
    certifications: [String],
    desgrees: [String],
    skills: [String],
    experience: String,
    
    timestamp : Date,
    creationDate: String, //TODO: Format date into string format
    profileImageURL: String,
    approved: Bool,
    active : String,
    accountType : String
    
    
    
    ) {
        
        let user = Auth.auth().currentUser!.uid
        
        db.collection("Members").document(user).setData(
            [
                "id": UUID(),
                "title": title,
                "division": division,
                "firstName" : firstName,
                "lastName" : lastName,
                
                "dob" : dob,
                "bio" : bio,
                "city" : city,
                "state" : state,
                "country" : country,
                
                "email": email,
                "number": number,
                "websites": [websites],
                
                "certifications": [certifications],
                "desgrees": [desgrees],
                "skills": [skills],
                "experience": experience,
                
                "timestamp" : timestamp,
                "creationDate": creationDate, //TODO: Format date into string format
                "profileImageURL": profileImageURL,
                "approved": approved,
                "active" : active,
                "accountType" : accountType,
            ])
        { error in
            
            //Check for errors
            if error == nil {
                //TODO: Remove comment below to allow verification message to be sent to user after signing up.
                print("Add document to FireStore was SUCCESSFUL in User_ViewModel")
                //TODO: UNCOMMENT BELOW FOR PRODUCTION - EMAIL VERIFICATION
                //                Auth.auth().currentUser?.sendEmailVerification(completion: { emailErr in
                //                    if emailErr == nil {
                //                        print("SendEmailVerification was SUCCESSFUL in User_ViewModel")
                //                    }
                //                })
                //No errors..
                
                //TODO: ADD FUNCTION FOR BELOW CODE
//                self.updateDEFAULT_Username(username: firstName)
                
                //TODO: UNCOMMENT BELOW FOR PRODUCTION
//                //Send user Verification Email after creation
//                Auth.auth().currentUser?.sendEmailVerification { error in
//                    if error != nil {
//                        print(String(describing: error?.localizedDescription))
//                    }
//                }
                
            } else {
                //Handle error
                print("Their was an ERROR on in Member_ViewModel")
                print("Unable to add details to user document...\n\n")
            }
        }
    }
    
    
    
    
    
    
}



