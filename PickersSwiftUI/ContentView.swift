//
//  ContentView.swift
//  PickersSwiftUI
//
//  Created by Евгений Карась on 2.12.22.
//

import SwiftUI

struct ContentView: View {
    @State var section = 20
    var settingTime = ["10 min", "20 min","30 min","40 min"]
    var body: some View {

        VStack{
            
            Picker(selection:  $section) {
                ForEach(self.settingTime){
                    Text(self.settingTime[$0])
                }
            } label: {
                Text("Tyyyy")
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
