//
//  ContentView.swift
//  MacLandmarks
//
//  Created by Ana Victoria Frias on 11/06/20.
//  Copyright © 2020 Photoshelter. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var email: String = ""
    @State private var password: String = ""
    var body: some View {
        HStack {
           Image("photoshelter")
            .padding()
            VStack {
                VStack {
                    Text("Login to Photoshelter").multilineTextAlignment(.leading).padding()
                    Text("Enter your login details below")
                    .multilineTextAlignment(.leading)
                    .padding()
                    Spacer()
                    Text("EMAIL")
                    TextField("email", text: $email).padding()
                    Spacer()
                    Text("PASSWORD")
                    SecureField("password", text: $password).padding().border(Color(red: 0.0, green: 0.0, blue: 0.0, opacity: 0.0), width: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/)
                    Spacer()
                    Button(action: {
                        print("Delete button tapped!")
                    }) {
                        Text("Login")
                    }.padding()
                }
            }.background(Color.white)
        }.frame(width: 700, height: 400, alignment: .topLeading).background(Color.black)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
