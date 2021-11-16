//
//  ButtonsView.swift
//  MyMedia
//
//  Created by Olalla Gómez Reyes on 10/11/21.
//

import SwiftUI

struct ButtonsView: View {
    var body: some View {
        VStack(){
            //reloj
            //temperatura
            
            HStack{
                ButtonMainView(buttonColor: Color("wazeColor"), textColor: Color.white, iconName: "waze", iconTitle: "Waze", action: .goToWaze, systemImage: false)
                
                ButtonMainView(buttonColor: Color("spotifyColor"), textColor: Color.white, iconName: "spotify", iconTitle: "Spotify", action: .goToSpotify, systemImage: false)
                
            }
            
            HStack{
                
                ButtonMainView(buttonColor: Color("orangeCustom"), textColor: Color.white, iconName: "phone.fill", iconTitle: "Teléfono", action: .goToPhone, systemImage: true)
                
                ButtonMainView(buttonColor: Color("orangeCustom"), textColor: Color.white, iconName: "radio.fill", iconTitle: "Radio", action: .goToRadio, systemImage: true)
                
            }
        }
        .padding()
    }
}

struct ButtonsView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonsView()
    }
}
