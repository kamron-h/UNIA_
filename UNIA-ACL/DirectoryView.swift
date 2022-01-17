//
//  DirectoryView.swift
//  UNIA-ACL
//
//  Created by Kamron Hopkins on 1/16/22.
//

import SwiftUI

struct DirectoryView: View {
    
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
        
//        List(directoryList , id: \.self) { item in
        List() {
            
            Section(header: Text("Accounting")) {
                Text("Accounting - Assata Shakur (Active)")
                Text("Finacial Planning - Amun Ra")
                Text("Taxes - Harriet Tubman (Active)")
                
            }
            Section(header: Text("Electricity")) {
                Text("Commercial - Amun Ra")
                Text("Residential - Amun Ra")
                Text("Contractor - Amun Ra")
            }
            Section(header: Text("Engineering")) {
                Text("Machincal Enginerring - Malcom X (Active)")
                Text("Software Enginerring - Idi Amin")
                Text("Software Enginerring - Thomas Sankara (Active)")
                Text("Software Enginerring - Patrice Lumumba (Active)")
            }
            Section(header: Text("Media")) {
                Text("Digital Films - Thomas Sankara (Active)")
                Text("Digital Art - Thomas Sankara")
                Text("Digital Marketing - Thomas Sankara (Active)")
                Text("Digital PR - Thomas Sankara")
            }
            Section(header: Text("Auto Mechanic")) {
                Text("Auto - Thomas (Active)")
                Text("Electric Media - Thomas")
                Text("Commerical Trucks - Thomas (Active)")
                Text("Boats - Thomas")
            }
            Section(header: Text("Nurses")) {
                Text("Traveling - Thomas")
                Text("Home Health - Thomas")
                Text("Pediatric - Thomas")
                Text("Hospice - Thomas")
            }
            Section(header: Text("Plumbing")) {
                Text("Commercial - Thomas Sankara")
                Text("Residential - Thomas")
                Text("Contractor - Thomas")
            }
            Section(header: Text("Sciences")) {
                Text("Biologist - Thomas")
                Text("Oceanography - Thomas")
                Text("Nurology - Thomas")
                Text("Chemist - Thomas")
            }
            
            
            
        }
        .listStyle(.grouped)
        .preferredColorScheme(.dark)
    }
}

struct DirectoryView_Previews: PreviewProvider {
    static var previews: some View {
        DirectoryView()
    }
}
