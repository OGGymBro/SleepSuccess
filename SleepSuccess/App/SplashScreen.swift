//
//  SplashScreen.swift
//  SleepSuccess
//
//  Created by Joaquim Menezes on 04/07/24.
//

import SwiftUI

struct SplashScreen: View {
    
    @Binding var isPresented :Bool
    
    @State private var scale = CGSize(width: 0.8, height: 0.8)
    //@State private var systemImageOpacity = 0.0
    @State private var imageOpacity = 1.0
    
    
    var body: some View {
        VStack(alignment: .center){
            ZStack {
                VStack {
                    Spacer()
                    
                    Text("Welcome to \nSleepSuccess")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .foregroundStyle(.primary)
                    .multilineTextAlignment(.center)
                    
                    Image(systemName: "clock.badge.checkmark")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .font(.system(size: 100))
                        .frame(width: 200, height: 200)
                        .foregroundColor(.green)
                        .padding(.leading,30)
                    
                    Spacer()
                    
                    HStack{
                        
                        Text("App Version:")
                            .font(.subheadline)
                            .foregroundStyle(.gray)
                        Text("\(appVersion) (\(buildNumber))")
                            .font(.subheadline)
                            .foregroundColor(.gray)
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        
                    }
                }
                
                
            }
            .scaleEffect(scale)
            .opacity(imageOpacity)
        }
        .onAppear {
            withAnimation(.easeInOut(duration: 1.5)){
                scale = CGSize(width: 1, height: 1)
            }
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 2.5,
                                          execute: {
                withAnimation(.easeIn(duration: 1)){
                    scale = CGSize(width: 50, height: 50)
                    imageOpacity = 0.0
                }
            })
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 3.5,
                                          execute: {
                withAnimation(.easeIn(duration: 1)){
                    isPresented.toggle()
                }
            })
        }
    }
}

#Preview {
    SplashScreen(isPresented: .constant(true))
}
