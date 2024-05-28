//
//  DetailViewController.swift
//  AssessmentTask
//
//  Created by Harjeet Singh on 28/05/24.
//

import UIKit

class DetailViewController: UIViewController {
    var viewModel: DetailViewModel!
    
    private let idLabel = UILabel()
    private let titleLabel = UILabel()
    private let bodyLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        self.title = "Details"
        setupLabels()
        setupLayout()
        displayUserDetails()
    }
    
    private func setupLabels() {
        idLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        bodyLabel.translatesAutoresizingMaskIntoConstraints = false
        
        idLabel.numberOfLines = 0
        titleLabel.numberOfLines = 0
        bodyLabel.numberOfLines = 0
        
        view.addSubview(idLabel)
        view.addSubview(titleLabel)
        view.addSubview(bodyLabel)
    }
    
    private func setupLayout() {
        NSLayoutConstraint.activate([
            idLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 16),
            idLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            idLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            
            titleLabel.topAnchor.constraint(equalTo: idLabel.bottomAnchor, constant: 16),
            titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            titleLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            
            bodyLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 16),
            bodyLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            bodyLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16)
        ])
    }
    
    private func displayUserDetails() {
        idLabel.text = viewModel.postId
        titleLabel.text = viewModel.postTitle
        bodyLabel.text = viewModel.postBody
    }
}
