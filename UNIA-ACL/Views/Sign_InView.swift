//
//  Sign_InView.swift
//  UNIA-ACL
//
//  Created by Kamron Hopkins on 2/12/22.
//

import SwiftUI
import Firebase

struct Sign_InView: View {
    
    //Color Scheme
    let garveyGreenColor = Color(UIColor(displayP3Red: 0.0, green: 0.4, blue: 0.10, alpha: 1))
    let bloodRedColor = Color(UIColor(displayP3Red: 0.70, green: 0.0, blue: 0.12, alpha: 1))
    let amberGoldColor = Color(UIColor(displayP3Red: 1.0, green: 0.75, blue: 0.0, alpha: 1))
    let grayMoonColor = Color(UIColor(displayP3Red: 0.55, green: 0.55, blue: 0.55, alpha: 1))
    
    @ObservedObject var member = MemberModel()
    
    let screenWidth = UIScreen.main.bounds.width
    let screenHeight = UIScreen.main.bounds.height
    
    @State private var email: String = ""
    @State private var password: String = ""
    
    @State var logInErrStatus = ""
    
    @State var failedSignIn = false
    @State var successfulSignIn = false
    
    @State var submitPayment : Bool = true
    //Used for beta testing ONLY
    @State private var istrue = true
    
    @State private var isShowingDetailView = false
    
    func logInUser(email: String, password: String) {
        
        if email.count > 6 && password.count >= 6 {
            
            
            Auth.auth().signIn(
                withEmail: email,
                password: password
            ) { result, err in
                if let err = err {
                    logInErrStatus = "\(err.localizedDescription)"
                    print("There was an error creating user :\n", err.localizedDescription)
                    print(logInErrStatus)
                    failedSignIn.toggle()
                }
                
                
                if result?.user.uid == nil {
                    successfulSignIn = false
                    logInErrStatus = "\(err!.localizedDescription)"
                } else {
                    successfulSignIn = true
                }
                
                //                logInErrStatus = ""
                print("Successfully signed in :\(successfulSignIn)")
            }
            
            
        } else {
            successfulSignIn = false
            print("Email & Password fields must be greater than 6 characters.")
            logInErrStatus = "Email & Password fields must be greater than 6 characters."
        }
        
        
        
        
    }

    
    @State var goesToNavView = false
    
    
    var body: some View {
        NavigationView(content: {
            ScrollView {
                WelcomeWidget()
                Spacer()
                Spacer()
                VStack {
                    
                    Spacer()
                    Spacer()
                    HStack {
                        Text("Email :")
                            .bold()
                        Spacer()
                    }
                    
                    TextField(
                        "User name (email address)",
                        text: $email)
                        .font(Font.system(size: 34))
                        .foregroundColor(.black)
                        .autocapitalization(.none)
                        .disableAutocorrection(true)
                        .background(.white)
                        .cornerRadius(3)
                    
                    Spacer()
                    HStack {
                        Text("Password :")
                            .bold()
                        Spacer()
                    }
                    SecureField(
                        "Password",
                        text: $password
                    ) {
                        //                    member.logMemberIn(email: email, password: password)
                    }
                    .font(Font.system(size: 34))
                    .foregroundColor(.black)
                    .background(.white)
                    .cornerRadius(3)
                    
                    Spacer()
                    Spacer()
                }
                .padding()
                
                Spacer(minLength: 50)
                VStack {
                    
                    
                    
                    NavigationLink(destination: NavView(), isActive: $isShowingDetailView) { EmptyView() }
                    Button {
                        member.logMemberIn(email: email, password: password)
                        if Auth.auth().currentUser != nil {
                            self.isShowingDetailView = true
                        }
                    } label: {
                        SignInButton()
                    }
                }
                .frame(minWidth: 300, idealWidth: 300, maxWidth: .infinity, minHeight: 15, idealHeight: 25, maxHeight: 51, alignment: .bottom)
                .padding(.horizontal, 13.0)
                
                VStack {
                    Button {
                        //action
                        
                    } label: {
                        Text("Request Password Reset")
                    }
                    
                }
                .padding()
                Spacer()
            }
            .background(
                Image("garvey1")
                    .renderingMode(.original)
                    .resizable()
                    .frame(width: screenWidth, height: screenHeight, alignment: .center)
            )
        })
        .onTapGesture(perform: {
            hideKeyboard()
        })
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(true)
        .background(
            Image("garvey1").resizable()
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
        )
    }
}




struct SignInView: View {
    
    //Color Scheme
    let garveyGreenColor = Color(UIColor(displayP3Red: 0.0, green: 0.4, blue: 0.10, alpha: 1))
    let bloodRedColor = Color(UIColor(displayP3Red: 0.70, green: 0.0, blue: 0.12, alpha: 1))
    let amberGoldColor = Color(UIColor(displayP3Red: 1.0, green: 0.75, blue: 0.0, alpha: 1))
    let grayMoonColor = Color(UIColor(displayP3Red: 0.55, green: 0.55, blue: 0.55, alpha: 1))
    
    let screenWidth = UIScreen.main.bounds.width
    let screenHeight = UIScreen.main.bounds.height
    
    @State private var userEmail: String = ""
    @State private var password: String = ""
    
    @State var logInErrStatus = ""
    
    @State var failedSignIn = false
    @State var successfulSignIn = false
    
    func logInUser(email: String, password: String) {
        
        if email.count > 6 && password.count >= 6 {
            
            
            Auth.auth().signIn(
                withEmail: email,
                password: password
            ) { result, err in
                if let err = err {
                    logInErrStatus = "\(err.localizedDescription)"
                    print("There was an error creating user :\n", err.localizedDescription)
                    print(logInErrStatus)
                    failedSignIn.toggle()
                }
                
                
                if result?.user.uid == nil {
                    successfulSignIn = false
                    logInErrStatus = "\(err!.localizedDescription)"
                } else {
                    successfulSignIn = true
                }
                
                //                logInErrStatus = ""
                print("Successfully signed in :\(successfulSignIn)")
            }
            
            
        } else {
            successfulSignIn = false
            print("Email & Password fields must be greater than 6 characters.")
            logInErrStatus = "Email & Password fields must be greater than 6 characters."
        }
        
        
        
        
    }
    
    var body: some View {
        ScrollView {
            VStack {
                Spacer()
                    .frame(height: 45.0)
                Image("charity")
                    .resizable()
                    .frame(width: screenWidth*0.8, height: screenWidth*0.8, alignment: .center)
                    .aspectRatio(contentMode: .fill)
                    .padding()
                
                Text("OurWealth")
                    .font(Font.custom("Nosifer-Regular", size: 34))
                    .foregroundColor(bloodRedColor)
                
                Spacer(minLength: 31.0)
                
                EmailTextField(userEmail: $userEmail, password: $password)
                    .foregroundColor(.black)
                    .accentColor(.black)
                
                
                Spacer(minLength: 40.0)
                
                HStack {
                    
                    //SignIn Button
                    if successfulSignIn == false {
                        SignInButton()
                            .onTapGesture {
                                logInUser(email: userEmail, password: password)
                            }
                        
                    } else {
                        NavigationLink(destination: NavView()) {
                            SignInButton()
                        }
                    }
                    
                    
                }
                .frame(minWidth: 300, idealWidth: 300, maxWidth: .infinity, minHeight: 15, idealHeight: 25, maxHeight: 51, alignment: .bottom)
                .padding(.horizontal, 13.0)
                
                
                
                Spacer()
                    .padding(.top)
                
                //TODO: ADD IN FUNCTION BELOW FOR PRODUCTION
                //Forgot Password Button
                Button(action: {}, label: {
                    Text("Forgot Your Password?")
                }).font(.footnote.bold()).padding()
                
            }
            .padding(.top, 50)
            
            //ERROR MESSAGE
            Text(logInErrStatus)
                .foregroundColor(.red)
                .multilineTextAlignment(.center)
            
            Spacer(minLength: 250)
            //Copywrite Warning
            Text("Copywritten by OurWealth 2020.")
                .foregroundColor(bloodRedColor).font(.caption2)
                .padding(.top, 60.0)
                .padding(.bottom, 25)
        }
        .onTapGesture {
            hideKeyboard()
        }
        .background(Color.black)
        .ignoresSafeArea()
        
    }
}





struct noLog : View {
    
    @Binding var logInErrStatus : String
    
    var body: some View {
        
        VStack {
            Spacer()
            Text("Unfortunalety we where unable to log you in successfully. Here's why :")
                .font(.title)
                .foregroundColor(.accentColor)
                .multilineTextAlignment(.center)
                .frame(alignment: .center)
            Spacer()
            Text(logInErrStatus)
                .font(.subheadline)
                .foregroundColor(.accentColor)
                .multilineTextAlignment(.center)
                .frame(alignment: .center)
            Spacer()
            Spacer()
            
        }
        
        
        
        
    }
}


struct EmailTextField: View {
    @Binding var userEmail: String
    @Binding var password: String
    
    var body: some View {
        
        VStack {
            HStack {
                Text("   Email Address :")
                    .font(.caption2)
                    .frame(width: 200, alignment: .leading)
                    .foregroundColor(.white)
                
                    .padding(.top, 8)
                Spacer()
            }
            TextField(
                "",
                text: $userEmail)
                .foregroundColor(.black)
                .accentColor(Color.red)
                .keyboardType(.emailAddress)
                .frame(minWidth: 200, idealWidth: 250, maxWidth: .infinity, minHeight: 40, idealHeight: 50, maxHeight: .infinity, alignment: .center)
                .autocapitalization(.none)
                .disableAutocorrection(true)
                .border(Color(UIColor.separator))
                .background(Color(UIColor(displayP3Red: 1.0, green: 0.75, blue: 0.0, alpha: 1)).opacity(0.8))
                .cornerRadius(7.0)
            Spacer()
            HStack {
                Text("   Password :")
                    .font(.caption2)
                    .frame(width: 200, alignment: .leading)
                    .foregroundColor(.white)
                
                    .padding(.top, 8)
                Spacer()
            }
            SecureField(
                "",
                text: $password
            ) {
                //            Create function to handle firebase login
                //            handleLogin(username: $username, password: password)
            }
            .foregroundColor(.black)
            .accentColor(Color.red)
            .frame(minWidth: 200, idealWidth: 250, maxWidth: .infinity, minHeight: 45, idealHeight: 50, maxHeight: .infinity, alignment: .center)
            .cornerRadius(7.0)
            .border(Color(UIColor.separator))
            .background(Color(UIColor(displayP3Red: 1.0, green: 0.75, blue: 0.0, alpha: 1)).opacity(0.8))
            .cornerRadius(7.0)
            
        }
        
        
        //        .background(Color.red)
    }
    
    
}



//OW SignIn Button
struct SignInButton: View {
    let garveyGreenColor = Color(UIColor(displayP3Red: 0.0, green: 0.4, blue: 0.10, alpha: 1))
    
    var body: some View {
        
        Text("Sign Into the U.N.I.A.")
            .foregroundColor(Color(UIColor(displayP3Red: 0.70, green: 0.0, blue: 0.12, alpha: 1)))
            .font(Font.custom("Caveat", size: 26))
            .multilineTextAlignment(.center)
            .frame(maxWidth: .infinity, minHeight: 35, alignment: .center)
            .padding(.vertical, 5.0)
            .background(garveyGreenColor)
            .cornerRadius(7.0)
            .padding(5.0)
        
    }
    
    
}


struct WelcomeWidget : View {

    var body: some View {
        //
        VStack {
            Text("Welcome to the ")
                .font(Font.custom("Caveat", size: 26))
                .multilineTextAlignment(.center)
            
            Text("U.N.I.A - A.C.L.")
//                .font(Font.title)
                .font(Font.custom("Caveat", size: 40 ))
        }
//        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
        .padding(.top, -1.0)
        .padding(.bottom, 5)
        .padding(.horizontal, 26)
        .background(.black.opacity(0.5))
        .cornerRadius(12)
    }
}


struct Sign_InView_Previews: PreviewProvider {
    static var previews: some View {
        Sign_InView()
            .preferredColorScheme(.dark)
    }
}
