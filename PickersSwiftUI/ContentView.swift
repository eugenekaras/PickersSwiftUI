//
//  ContentView.swift
//  PickersSwiftUI
//
//  Created by Евгений Карась on 2.12.22.
//

import SwiftUI

struct ContentView: View {
    @State var section = 0
    @State var sectionPrc = 0
    @State var isOn = false
    var settingTime = ["10 min", "20 min","30 min","40 min" ]
    
    var procents = ["10 prc", "20 prc","30 prc","40 prc","50 prc","60 prc","70 prc","80 prc","90 prc","100 prc" ]
    var body: some View {
        NavigationView {
            Form{
                
                
                Picker("Time", selection:  $section) {
                    
                    ForEach(0..<settingTime.count ){
                        Text(settingTime[$0])
                    }
                }.pickerStyle(.navigationLink)
                
                Toggle(isOn: $isOn) {
                    Text("Авиарежим").foregroundColor(isOn ? .orange: .gray)
                }
                
                Picker("Подсветка", selection:  $sectionPrc) {
                    
                    ForEach(0..<procents.count ){
                        Text(procents[$0])
                    }
                }.pickerStyle(.navigationLink)
                
                Picker("Items", selection:  $sectionPrc) {
                    
                    ForEach(0..<100) {i in
                        Text("item = \(i)")
                    }
                }.pickerStyle(.navigationLink)
                
                
            }.navigationTitle("Настройки")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
