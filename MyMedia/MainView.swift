//
//  ContentView.swift
//  MyMedia
//
//  Created by Fabio Rodriguez Martinez on 25/10/2021.
//

import SwiftUI

struct MainView: View {
    //menu
    
   
    
    @State private var isActive : Bool = false
    var body: some View {
        NavigationView{
            VStack(spacing:0){
               HeaderView()
               TimeView()
               ButtonsView()
               Spacer()
            }
            // Para que no quede un espacio arriba (barra de navegación) ya que metemos una custom
            .navigationBarTitle("")
            .navigationBarHidden(true)
            .background(Color.black)
            .edgesIgnoringSafeArea(.bottom)
           
            
        }
          
    }
}





struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
