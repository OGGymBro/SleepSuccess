//
//  ContainerView.swift
//  SleepSuccess
//
//  Created by Joaquim Menezes on 04/07/24.
//

import SwiftUI

struct ContainerView: View {
    
    @State private var isSplashScreenViewPresented = true
    
    var body: some View {
        if !isSplashScreenViewPresented {
            ContentView()
        } else {
            SplashScreen(isPresented: $isSplashScreenViewPresented)
        }
    }
}

#Preview {
    ContainerView()
}
