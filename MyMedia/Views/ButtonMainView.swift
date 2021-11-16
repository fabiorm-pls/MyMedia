//
//  ButtonMainView.swift
//  MyMedia
//
//  Created by Olalla Gómez Reyes on 10/11/21.
//

import SwiftUI



struct ButtonMainView: View {
    enum ButtonAction {
        case goToPhone
        case goToRadio
        case goToSpotify
        case goToWaze
        
       
    }
    var buttonColor: Color
    var textColor: Color
    var iconName: String
    var iconTitle: String
    var action = ButtonAction.goToWaze
    var systemImage: Bool
    
    
    
    
    var body: some View {
        
        Button(action:{
            switch action {
            case .goToPhone:
                break
            case .goToRadio:
                break
            case .goToSpotify:
                break
            case .goToWaze:
                break
            // Etc. Convertir este String en un enum y hacer el switch sobre el enum
            default:
                break
            }
        }){
            VStack{
                if systemImage {
                    Image(systemName: iconName)
                        .font(.system(size: 90))
                        .foregroundColor(textColor)
                        .padding(.bottom, 10)
                } else {
                    Image(iconName)
                        .resizable()
                        .frame(width: 100, height: 100)
                        .aspectRatio(contentMode:.fit)
                        .padding(.bottom, 10)
                }
                
                
                Text(iconTitle).font(Font.custom("hind-light",size: 20))
                    .foregroundColor(textColor)
                    .font(.system(.headline))
            }
            .frame(minWidth: 180, minHeight: 200)
            .background(buttonColor)
            .cornerRadius(10)
        }
        
    }
}

struct ButtonMainView_Previews: PreviewProvider {
    
    
    static var previews: some View {
        ButtonMainView(buttonColor: Color("wazeColor"), textColor: Color.white, iconName: "waze", iconTitle: "Waze", action: .goToWaze, systemImage: false)
    }
}
