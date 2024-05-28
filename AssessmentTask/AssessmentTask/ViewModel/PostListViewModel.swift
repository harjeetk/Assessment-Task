//
//  PostListViewModel.swift
//  AssessmentTask
//
//  Created by Harjeet Singh on 28/05/24.
//

import Foundation

class PostListViewModel {
    private var posts: [PostModel] = []
    private var currentPage = 1
    private let pageSize = 10
    private var isLoading = false

    var didUpdatePosts: (() -> Void)?

    func fetchPosts() {
        guard !isLoading else { return }
        isLoading = true
        
        let url = URL(string: "https://jsonplaceholder.typicode.com/posts?_page=\(currentPage)&_limit=\(pageSize)")!
        let task = URLSession.shared.dataTask(with: url) { [weak self] data, response, error in
            guard let self = self else { return }
            self.isLoading = false
            
            if let data = data {
                do {
                    let posts = try JSONDecoder().decode(Posts.self, from: data)
                    self.posts.append(contentsOf: posts)
                    self.currentPage += 1
                    self.didUpdatePosts?()
                } catch {
                    print("Failed to decode users: \(error)")
                }
            }
        }
        task.resume()
    }

    func numberOfPosts() -> Int {
        return posts.count
    }

    func post(at index: Int) -> PostModel {
        return posts[index]
    }
}
