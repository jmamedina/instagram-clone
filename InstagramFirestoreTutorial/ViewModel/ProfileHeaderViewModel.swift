//
//  ProfileHeaderViewModel.swift
//  InstagramFirestoreTutorial
//
//  Created by メディーナジョンマイケル on 2021/03/06.
//

import Foundation

struct ProfileHeaderViewModel {
    let user: User
    
    var fullname: String {
        return user.fullname
    }
    
    var profileImageUrl: URL? {
        return URL(string: user.profileImageUrl)
    }
    
    init(user: User) {
        self.user = user
    }
}
