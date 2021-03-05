//
//  ImageUploader.swift
//  InstagramFirestoreTutorial
//
//  Created by メディーナジョンマイケル on 2021/03/03.
//

import FirebaseStorage

struct ImageUploader {
    static func uploadImage(image: UIImage, completion: @escaping(String) -> Void) {
        guard let imageData = image.jpegData(compressionQuality: 0.75) else { return }
        let filename = NSUUID().uuidString
        let ref = Storage.storage().reference(withPath: "/profile_images/\(filename)")
   
        ref.putData(imageData, metadata: nil) { metadata, error in
            if let error = error {
                print("Debug: Failed to upload image \(error)")
            }
        
        ref.downloadURL { (url, error) in
            guard let imageUrl = url?.absoluteString else { return }
            completion(imageUrl)
        }
            
        }
    }
}
