//
//  GFRepoItemVC.swift
//  GhFollowers
//
//  Created by Sanjarbek Abdurayimov on 30/01/24.
//

import UIKit

protocol GFRepoItemVCDelegate: AnyObject {
    func didTapGitHubDelegate(for user: User)
}

class GFRepoItemVC: GFItemInfoVC {
    
    weak var delegate: GFRepoItemVCDelegate!
    
    init(user: User, delegate: GFRepoItemVCDelegate!) {
        super.init(user: user)
        self.delegate = delegate
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureItems()
    }
    
    
    private func configureItems() {
        itemInfoViewOne.set(itemInfoType: .repos, withCount: user.publicRepos)
        itemInfoViewTwo.set(itemInfoType: .gists, withCount: user.publicGists)
        actionButton.set(color: .systemPurple, title: "GitHub Profile", systemImageName: "person")
    }
    
    
    override func actionButtonTapped() {
        delegate.didTapGitHubDelegate(for: user)
    }
}
