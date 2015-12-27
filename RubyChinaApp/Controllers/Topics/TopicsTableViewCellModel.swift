//
// Created by 姜军 on 12/28/15.
// Copyright (c) 2015 RubyChina. All rights reserved.
//

import Foundation
import UIKit

class TopicsTableViewCellModel {
    let id: String
    let title: String
    let authorName: String
    let nodeName: String
    let avatarUrl: NSURL

    var avatar: UIImage?

    init(byModel model: Topic) {
        self.id = model.id
        self.title = model.title
        self.authorName = model.user.login
        self.nodeName = model.nodeName
        self.avatarUrl = model.user.avatarUrl

    }
}
