//
//  HeaderView.swift
//  MyMedia
//
//  Created by Olalla Gómez Reyes on 10/11/21.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        HStack {
            NavigationLink(destination:  SettingsScreen()) {
            Image(systemName: "line.3.horizontal")
                .padding(.leading, 15)
                .font(.system(size: 55, weight: .bold))
                .foregroundColor(.white)
            }
            Spacer()
            HStack {
                Text("MY")
                    .foregroundColor(.orange)
                    .font(.system(size: 80, weight: .bold))
                VStack {
                    Text("Media")
                        .foregroundColor(.white)
                        .font(.system(size: 35, weight: .light))
                    Text("Station")
                        .foregroundColor(.white)
                        .font(.system(size: 35, weight: .light))
                }
            }
           
            Spacer()
            NavigationLink(destination:  AudioScreen()) {
            Image(systemName: "mic.fill")
                .padding(.trailing, 15)
                .font(.system(size: 50, weight: .bold))
                .foregroundColor(.white)
        }
        }
        .frame(height: 100)
        .background(Color.gray)
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
