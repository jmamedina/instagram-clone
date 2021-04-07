//
//  Post.swift
//  InstagramFirestoreTutorial
//
//  Created by メディーナジョンマイケル on 2021/04/07.
//

import Firebase

struct Post {
    var caption: String
    var likes: Int
    let imageUrl: String
    let ownerUid: String
    let timestamp: Timestamp
    let postId: String
    let ownerImageUrl: String
    let ownerUserName: String
    
    init(postId: String, dictionary: [String: Any]) {
        
        self.postId = postId
        self.caption = dictionary["caption"] as? String ?? ""
        self.likes = dictionary["likes"] as? Int ?? 0
        self.imageUrl = dictionary["imageUrl"] as? String ?? ""
        self.timestamp = dictionary["imageUrl"] as? Timestamp ?? Timestamp(date: Date())
        self.ownerUid = dictionary["ownerUid"] as? String ?? ""
        self.ownerImageUrl =  dictionary["ownerImageUrl"] as? String ?? ""
        self.ownerUserName =  dictionary["ownerUsername"] as? String ?? ""
        
    }
}
