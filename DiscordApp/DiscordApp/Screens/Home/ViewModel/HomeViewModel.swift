//
//  HomeViewModel.swift
//  DiscordApp
//
//  Created by Nam. Tran Dinh - CMC Global DKR1 on 10/3/25.
//

import SwiftUI

class HomeViewModel : ObservableObject, Identifiable {
    @Published var image: UIImage?
    @Published var isLoading = false
    @Published var shouldShowAlert = false
    @Published var errorDescription = ""
    
    var username: String {
  //    return UserDataManager.currentUser?.email ?? ""
        return ""
    }
    
    func logout() {
  //    AuthenticationServices.logout()
    }
    
    func deleteAccount() {
  //    AuthenticationServices.deleteAccount()
    }
    
    func getMyProfile() {
      isLoading = true
  //    UserServices.getMyProfile(
  //      success: { [weak self] _ in
  //        self?.errorDescription = ""
  //        self?.shouldShowAlert = true
  //        self?.isLoading = false
  //      },
  //      failure: { [weak self] error in
  //        self?.isLoading = false
  //        self?.shouldShowAlert = true
  //        self?.errorDescription = error.localizedDescription
  //    })
    }
    
    func saveAvatar() {
      //TODO
      //guard let image = image else { return }
      isLoading = true
    }
}
