//
//  ContentView.swift
//  letter__up
//
//  Created by Shinjan Patra on 09/03/23.
//

import SwiftUI
import Firebase

struct ContentView: View {
    @State private var email = ""
    @State private var password = ""
    @State private var userIsLoggedIn = false
    var body: some View {
        ZStack {
            
            RoundedRectangle(cornerRadius: 30, style: .continuous)
                .foregroundStyle(.linearGradient(colors: [.blue, .white], startPoint: .topLeading, endPoint: .bottomTrailing))
                .frame(width: 1000, height: 400)
                .rotationEffect(.degrees(115))
                .offset(y: -350)
            RoundedRectangle(cornerRadius: 30, style: .continuous)
                .foregroundStyle(.linearGradient(colors: [.blue, .white], startPoint: .topLeading, endPoint: .bottomTrailing))
                .frame(width: 1000, height: 400)
                .rotationEffect(.degrees(115))
                .offset(y: 350)
            
            VStack(spacing: 20){
                Text("Welcome")
                    .foregroundColor(.white)
                    .font(.system(size: 40, weight: .bold, design: .rounded))
                    .offset(x:-100, y:-100)
                TextField("Email", text: $email)
                    .foregroundColor(.black)
                    .textFieldStyle(.plain)
                
                Rectangle()
                    .frame(width: 350,height: 1)
                    .foregroundColor(.white)
                    .bold()
                SecureField("Password", text: $password)
                    .foregroundColor(.black)
                    .textFieldStyle(.plain)
                Rectangle()
                    .frame(width: 350,height: 1)
                    .foregroundColor(.white)
                    .bold()
                    
                HStack {
                    Button{
                        //                        register()
                    } label:{
                        Text("Sign Up for Students")
                            .bold()
                            .frame(width: 175, height: 40)
                            .background(
                                RoundedRectangle(cornerRadius: 10, style: .continuous)
                                    .fill(.linearGradient(colors: [.blue, .blue], startPoint: .topLeading, endPoint: .bottomTrailing))
                            ).foregroundColor(.white)
                        
                    }
                    .padding(.top)
                    .offset(y: 130)
                    Button{
                        //                        register()
                    } label:{
                        Text("Sign Up for Faculties")
                            .bold()
                            .frame(width: 175, height: 40)
                            .background(
                                RoundedRectangle(cornerRadius: 10, style: .continuous)
                                    .fill(.linearGradient(colors: [.blue, .blue], startPoint: .topLeading, endPoint: .bottomTrailing))
                            ).foregroundColor(.white)
                        
                    }
                    .padding(.top)
                    .offset(y: 130)
                }
                Button{
                    //                    login()
                } label: {
                    Text("Already have an account? Login")
                        .bold()
                        .foregroundColor(.white)
                }
                .offset(y: 130)
                Button{
                    
                } label: {
                    Text("Go to DashB")
                        .bold()
                        .foregroundColor(.white)
                }
                .offset(y: 130)
            }
            .frame(width: 350)
        }
        .ignoresSafeArea()
    }
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}

