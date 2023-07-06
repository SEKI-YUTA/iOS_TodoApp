//
//  LoginViewViewModel.swift
//  ToDoList
//
//  Created by 関佑太 on 2023/07/04.
//

import FirebaseAuth
import Foundation

class LoginViewViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    @Published var errorMsg = ""
    
    init() {}
    
    func login() {
        guard validate() else {
            return
        }
//        if !validate() {
//            return
//        }
        
        print("Called")
        
        Auth.auth().signIn(withEmail: email, password: password)
    }
    
    func validate() -> Bool {
        errorMsg = ""
        guard !email.trimmingCharacters(in: .whitespaces).isEmpty,
              !password.trimmingCharacters(in: .whitespaces).isEmpty else {
            errorMsg = "Please fill all field"
            return false
        }
        
        guard email.contains("@") && email.contains(".") else {
            errorMsg = "Please enter valid email"
            return false
        }
        return true
    }
}
