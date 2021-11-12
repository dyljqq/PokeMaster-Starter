//
//  Store.swift
//  PokeMaster
//
//  Created by 季勤强 on 2021/11/12.
//  Copyright © 2021 OneV's Den. All rights reserved.
//

import Combine

class Store: ObservableObject {
    @Published var appState = AppState()
    
    static func reducer(
        state: AppState,
        action: AppAction
    ) -> AppState {
        var appState = state
        
        switch action {
        case .login(let email, let password):
            if password == "password" {
                let user = User(email: email, favoritePokemonIDs: [])
                appState.settings.loginUser = user
            }
        case .logout:
            appState.settings.loginUser = nil
        }
        
        return appState
    }
    
    func dispatch(_ action: AppAction) {
        #if DEBUG
        print("[ACTION]:\(action)")
        #endif
        
        let result = Store.reducer(state: appState, action: action)
        appState = result
    }
}
