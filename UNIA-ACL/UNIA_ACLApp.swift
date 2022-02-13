//
//  UNIA_ACLApp.swift
//  UNIA-ACL
//
//  Created by Kamron Hopkins on 1/16/22.
//

import SwiftUI

@main
struct UNIA_ACLApp: App {

    //Use app delegate adaptor to init required content
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate

    var body: some Scene {
        WindowGroup {
            NavView()
        }
    }
}
