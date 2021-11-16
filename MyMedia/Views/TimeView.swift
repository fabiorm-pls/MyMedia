//
//  TimeView.swift
//  MyMedia
//
//  Created by Olalla Gómez Reyes on 10/11/21.
//

import SwiftUI

struct TimeView: View {
    
    //inicializar timer
    let timer = Timer.publish(every: 60, on: .main, in: .common).autoconnect()
    
    //current hora
    @State var currentDate: Date = Date()
    var timeFormatter: DateFormatter{
        let formatter = DateFormatter()
        //formatter.dateStyle = .medium
        //formatter.dateFormat = " E, d MMM"
        formatter.timeStyle = .short
        formatter.amSymbol = ""
        formatter.pmSymbol = ""
        return formatter
    }
    //date
    var dateFormatter: DateFormatter{
        let formato = DateFormatter()
        formato.dateStyle = .medium
        formato.dateFormat = " EEEE, d MMM"
        return formato
    }
    
    var body: some View {
        HStack{
            VStack(alignment: .leading){
                Image(systemName: "clock")
                    .font(.system(size: 40, weight: .semibold))
                    .foregroundColor(.white)
                    .imageScale(.large)

                Text(timeFormatter.string(from:currentDate))
                    .font(.system(size: 50, weight: .light, design:.rounded))
                    .foregroundColor(.white)
                    .lineLimit(1)
                    .minimumScaleFactor(0.1)
   
                Text(dateFormatter.string(from:currentDate))
                    .font(.system(size: 20, weight: .light, design:.rounded))
                    .foregroundColor(.white)
                    .lineLimit(1)
                    .minimumScaleFactor(0.1)
            }
            .padding(.leading, 15)
            
            Spacer()
            
            VStack(alignment: .trailing){
                Image(systemName: "sun.max.fill")
                    .font(.system(size: 40, weight: .semibold))
                    .foregroundColor(.white)
                    .imageScale(.large)
                    
        
                Text("20 C")
                    .font(.system(size: 50, weight: .light, design:.rounded))
                    .foregroundColor(.white)
                    .lineLimit(1)
                    .minimumScaleFactor(0.1)

                Text("Caluroso")
                    .font(.system(size: 20, weight: .light, design:.rounded))
                    .foregroundColor(.white)
                    .lineLimit(1)
                    .minimumScaleFactor(0.1)
            }
            .padding(.trailing, 15)
        }
        .frame(height: 200)
        .background(
             Image("road")
                .resizable()
                .frame(height: 200)
                .aspectRatio(contentMode: .fill)
              //  .clipped()
         )
        .onReceive(timer, perform: { value in
            currentDate = value
            
        })
    }
}

struct TimeView_Previews: PreviewProvider {
    static var previews: some View {
        TimeView()
    }
}
