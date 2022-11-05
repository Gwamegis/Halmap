//
//  Song.swift
//  Halmap
//
//  Created by 전지민 on 2022/11/05.
//

import Foundation

struct Song: Identifiable, Codable {
    var id: String
    var type: Bool
    var title: String
    var lyrics: String
    var info: String
    var url: String
}
