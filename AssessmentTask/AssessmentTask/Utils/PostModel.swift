//
//  PostModel.swift
//  AssessmentTask
//
//  Created by Harjeet Singh on 28/05/24.
//

import Foundation

typealias Posts = [PostModel]

struct PostModel: Codable {
    var userId, id: Int?
    var title, body: String?
}
