//
//  UNIA_ACLApp.swift
//  UNIA-ACL
//
//  Created by Kamron Hopkins on 1/16/22.
//

import SwiftUI
import Firebase

@main
struct UNIA_ACLApp: App {

    //Use app delegate adaptor to init required content
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate

    var body: some Scene {
        WindowGroup {
            //Send to sign-in view if not logged in...
            if Auth.auth().currentUser == nil {
                Sign_InView()
            } else {
                NavView()
            }
            
        }
    }
}
