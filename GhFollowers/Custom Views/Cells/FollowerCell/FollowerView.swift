//
//  FollowerView.swift
//  GhFollowers
//
//  Created by Sanjarbek Abdurayimov on 04/02/24.
//

import SwiftUI

struct FollowerView: View {
    
    var follower: Follower
    
    var body: some View {
        VStack{
        AsyncImage(url: URL(string: follower.avatarUrl)) { image in
            image
                .resizable()
                .aspectRatio(contentMode: .fit)
        } placeholder: {
            Image(.avatarPlaceholder)
                .resizable()
                .aspectRatio(contentMode: .fit)
        }
            clipShape(Circle())

            Text(follower.login)
                .font(.body)
                .lineLimit(1)
                .minimumScaleFactor(0.6)
        }
    }
}

struct FollowerView_Previews: PreviewProvider {
    static var previews: some View {
        FollowerView(follower: Follower(login: "SAllen0400", avatarUrl: ""))
    }
}
