//
//  ContentView.swift
//  CoolLoginScreens
//
//  Created by Hitesh Agarwal on 08/02/20.
//  Copyright © 2020 Hitesh Agarwal. All rights reserved.
//

import SwiftUI

var redColor: Color {
    Color(red: 226 / 255, green: 107 / 255, blue: 124 / 255)
}

var darkBlue: Color {
    Color(red: 19 / 255, green: 37 / 255, blue: 101 / 255)
}
var darkGreen: Color {
    Color(red: 19 / 255, green: 101 / 255, blue: 37 / 255)
}
var greenColor: Color {
    Color(red: 2 / 255, green: 169 / 255, blue: 109 / 255)
}


struct LoginView: View {
    @Binding var isLogin:Bool
    @ObservedObject var viewModel = UserViewModel()
    
    var body: some View {
        ZStack(alignment: .top) {
            //linearGradientView
                //.edgesIgnoringSafeArea(.all)
            Color.init("f9f9f9")
                .edgesIgnoringSafeArea(.all)
            
            VStack(alignment: .center) {
                
                Spacer()
                Text("Welcome to LiGe Shop")
                    .font(.title)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                
                Spacer()
                
                VStack {
                    AppTextField(contentText: $viewModel.username,
                                 placeHolder: "Email",
                                 isPasswordField: false,
                                 errorMessage: viewModel.userNameError)
                    
                    AppTextField(contentText: $viewModel.password,
                                 placeHolder: "Password",
                                 isPasswordField: true,
                                 errorMessage: viewModel.passwordError)
                    
                    AppTextField(contentText: $viewModel.confirmPassword,
                                 placeHolder: "Confirm Password",
                                 isPasswordField: true,
                                 errorMessage: viewModel.confirmPasswordError)
                    
                    signinButton
                        .opacity(viewModel.isValid ? 1 : 0.2)
                        .disabled(!viewModel.isValid)
                    
                    orText
                }
                
                fbLoginButton
                    .padding(.bottom, 20)
                
                createAccountView
                Spacer()
                
                bottomTextView
                    .padding(.top, 20)
                    .padding(.bottom, 10)
            }
            .padding(.horizontal, 20)
            
        }
        
    }
}

extension LoginView {
    var linearGradientView: some View {
        LinearGradient(gradient: Gradient(colors: [
            Color(red: 103 / 255, green: 195 / 255, blue: 133 / 255),
            //            Color(red: 49 / 255, green: 74 / 255, blue: 157 / 255)
            darkGreen
        ]), startPoint: .top, endPoint: .bottom)
    }
    
    var signinButton: some View {
        Button(action: {
            isLogin = true
            print("click")
        }) {
            Text("SignUp")
                .font(.headline)
        }
        .frame(minWidth: 0, maxWidth: .infinity)
        .frame(height: 44)
        .foregroundColor(.black)
        .background(.yellow)
        .cornerRadius(22)
        .padding(.top, 10)
    }
    
    var orText: some View {
        Text("OR")
            .foregroundColor(.black)
            .font(.headline)
            .opacity(0.3)
            .frame(minWidth: 0, maxWidth: .infinity)
            .padding(.vertical, 15)
        
    }
    
    var fbLoginButton: some View {
        Button(action: {}) {
            Text("Signup with Facebook")
                .font(.headline)
        }
        .frame(minWidth: 0, maxWidth: .infinity)
        .frame(height: 44)
        .foregroundColor(.white)
        .background(darkBlue)
        .cornerRadius(22)
    }
    
    var createAccountView: some View {
        HStack() {
            Spacer()
            Text("Already User?")
                .foregroundColor(.black)
                .font(.headline)
                .opacity(0.5)
            
            
            Text("Login")
                .foregroundColor(.black)
                .font(.headline)
                .underline()
                .padding(.leading, 5)
            
            Spacer()
        }
    }
    
    var bottomTextView: some View {
        Text("By tapping continue you agree to Brand's Terms of Service and Privacy Policy")
            .multilineTextAlignment(.center)
            .foregroundColor(.black)
            .font(.caption)
            .opacity(0.5)
    }
}

struct LoginView_Previews: PreviewProvider {
    @State static var isLogin: Bool = false
    
    static var previews: some View {
        
        Group {
            LoginView(isLogin: .constant(false))
                .previewDisplayName("iPhone SE")
            
            LoginView(isLogin: .constant(false))
                .previewDevice(PreviewDevice(rawValue: "iPhone SE"))
            
        }
    }
}
