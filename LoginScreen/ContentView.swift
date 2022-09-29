//
//  ContentView.swift
//  LoginScreen
//
//  Created by Mucha Naibei on 29/09/2022.
//

import SwiftUI

struct ContentView: View {
    @State private var username = ""
    @State private var password = ""
    @State private var showingLoginScreen = false
    
    var body: some View {
        NavigationView{
            ZStack{
                Color.white
                    .ignoresSafeArea()
                Circle()
                    .scale(1.7)
                    .foregroundColor(.gray.opacity(0.15))
                Circle()
                    .scale(1.35)
                    .foregroundColor(.gray.opacity(0.15))
                VStack{
                    Text("Welcome")
                        .font(.largeTitle)
                        .bold()
                        .padding()
                    TextField("Username", text: $username)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                    TextField("Password", text: $password)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                    
                    Button("Login"){
                        authUser(Username: "", Password: "")
                    }
                    .foregroundColor(.red)
                    .frame(width: 300, height: 50)
                    .background(Color.black.opacity(0.1))
                    .cornerRadius(10)
                    
                    NavigationLink(destination: Text("Welcome to the other side"), isActive: $showingLoginScreen){
                        EmptyView()
                    }
                }
            }
            .navigationBarBackButtonHidden(true)
        }
       
        
    }
    func authUser(Username: String, Password:String){
        if username.lowercased() == ""{
            
            
            if password.lowercased() == ""{
                showingLoginScreen = true
            }
            
            
            struct ContentView_Previews: PreviewProvider {
                static var previews: some View {
                    ContentView()
                }
            }
        }
    }
}
