//
//  DetailViewModel.swift
//  AssessmentTask
//
//  Created by Harjeet Singh on 28/05/24.
//

import Foundation


class DetailViewModel {
    private let post: PostModel

    init(post: PostModel) {
        self.post = post
    }

    var postId: String {
        return "ID: \(post.id ?? 0)"
    }

    var postTitle: String {
        return "Title: \(post.title ?? "")"
    }

    var postBody: String {
        return "Body: \(post.body ?? "")"
    }
}
