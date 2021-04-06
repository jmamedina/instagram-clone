//
//  PostService.swift
//  InstagramFirestoreTutorial
//
//  Created by メディーナジョンマイケル on 2021/04/06.
//

import UIKit
import Firebase

struct PostService {
    
    static func uploadPost(caption: String, image: UIImage, completion: @escaping(FirestoreCompletion)) {
        guard let uid = Auth.auth().currentUser?.uid else { return }
                
        ImageUploader.uploadImage(image: image) { imageUrl in
            let data = ["caption": caption,
                        "timestamp": Timestamp(date: Date()),
                        "likes": 0, "imageUrl": imageUrl,
                        "ownerUid": uid] as [String : Any]
            
            COLLETION_POSTS.addDocument(data: data, completion: completion)
        }
    }
}
