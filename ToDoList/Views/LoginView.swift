//
//  LoginView.swift
//  ToDoList
//
//  Created by 関佑太 on 2023/07/04.
//

import SwiftUI

struct LoginView: View {
    @StateObject var viewModel = LoginViewViewModel()
    var body: some View {
        NavigationView {
            VStack {
                // Header
                HeaderView(
                    title: "To Do List", subtitle: "Get Thing done", angle: 15, backgroundColor: Color.pink)
                
                
                // Form
                Form {
                    if !viewModel.errorMsg.isEmpty {
                        Text(viewModel.errorMsg)
                            .foregroundColor(.red)
                    }
                    TextField("Email Address", text: $viewModel.email)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .autocapitalization(.none)
                        .autocorrectionDisabled()
                    SecureField("Password", text: $viewModel.password)
                        .textFieldStyle(DefaultTextFieldStyle())
                    TLButton(title: "Log In", background: Color.blue) {
                        // ログイン処理
                        viewModel.login()
                    }
                    
                }
                .offset(y: -50)
                
                
                // Create account
                
                VStack {
                    Text("New around here?")
                    NavigationLink("Create an account", destination: RegisterView())
                }
                .padding(.bottom, 50)
                
                Spacer()
            }.padding(EdgeInsets(top: 50, leading: 0, bottom: 0, trailing: 0))
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
