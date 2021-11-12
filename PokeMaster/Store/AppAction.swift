//
//  AppAction.swift
//  PokeMaster
//
//  Created by 季勤强 on 2021/11/12.
//  Copyright © 2021 OneV's Den. All rights reserved.
//

import Combine

enum AppAction {
    case login(email: String, password: String)
    case logout
}
