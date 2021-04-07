//
//  PostViewModel.swift
//  InstagramFirestoreTutorial
//
//  Created by メディーナジョンマイケル on 2021/04/07.
//

import Foundation

struct PostViewModel {
    private let post: Post
    
    var imageUrl: URL? { return URL(string: post.imageUrl) }
    
    var userProfileImageUrl: URL? { return URL(string: post.ownerImageUrl) }
    
    var username: String { return post.ownerUserName }
    
    var caption: String { return post.caption }
    
    var likes: Int { return post.likes }
    
    var likesLabelText: String {
        if post.likes != 1 {
            return "\(post.likes) likes"
        }else {
            return "\(post.likes) like)"
        }
    }
    
    init(post: Post) {
        self.post = post
    }
}
