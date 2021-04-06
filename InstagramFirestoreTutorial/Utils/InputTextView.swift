//
//  InputTextView.swift
//  InstagramFirestoreTutorial
//
//  Created by メディーナジョンマイケル on 2021/04/06.
//

import UIKit

class InputTextView: UITextView {
    
    var placeHolderText: String? {
        didSet { placeHolderLabel.text = placeHolderText }
    }
    
    private let placeHolderLabel: UILabel = {
        let label = UILabel()
        label.textColor = .lightGray
        return label
    }()
    
    override init(frame: CGRect, textContainer: NSTextContainer?) {
        super.init(frame: frame, textContainer: textContainer)
        
        addSubview(placeHolderLabel)
        placeHolderLabel.anchor(top: topAnchor, left: leftAnchor, paddingTop: 6, paddingLeft: 8)
        
        NotificationCenter.default.addObserver(self, selector: #selector(handleTextDidChange), name: UITextView.textDidChangeNotification, object: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
        
    @objc func handleTextDidChange(){
        placeHolderLabel.isHidden = !text.isEmpty
    }
}

