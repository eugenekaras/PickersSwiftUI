//
//  ContentView.swift
//  PickersSwiftUI
//
//  Created by Евгений Карась on 2.12.22.
//

import SwiftUI

struct ContentView: View {
    @State var section = 0
    var settingTime = ["10 min", "20 min","30 min","40 min"]
    var body: some View {

        VStack{
            
            Picker("Some text", selection:  $section) {
//                ForEach(settingTime, id: \.self){ val in
//                    Text(val.description.capitalized)
//                }
                
                ForEach(0..<settingTime.count ){
                    Text(settingTime[$0])
                }
            }
            
            Text("Время выбрано - \( settingTime[section])")
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
