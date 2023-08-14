//
//  ClubLoginModel.swift
//  SportsLifeSuccess
//
//  Created by Potenza on 07/08/23.
//

import Foundation

// MARK: - ClubLoginModel
class ClubLoginModel: Codable {
    let status, message: String?
    let data: DataClass?

    init(status: String?, message: String?, data: DataClass?) {
        self.status = status
        self.message = message
        self.data = data
    }
}

// MARK: - DataClass
class DataClass: Codable {
    let username, userPass, userEmail, role: String?
    let clubID, userStatus: String?

    enum CodingKeys: String, CodingKey {
        case username
        case userPass = "user_pass"
        case userEmail = "user_email"
        case role
        case clubID = "club_id"
        case userStatus = "user_status"
    }

    init(username: String?, userPass: String?, userEmail: String?, role: String?, clubID: String?, userStatus: String?) {
        self.username = username
        self.userPass = userPass
        self.userEmail = userEmail
        self.role = role
        self.clubID = clubID
        self.userStatus = userStatus
    }
}
