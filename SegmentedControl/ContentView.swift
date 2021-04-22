//
//  ContentView.swift
//  SegmentedControl
//
//  Created by Илья on 22.04.2021.
//

import SwiftUI

struct ContentView: View {
    
    @State private var selectorIndex = 0
    @State private var options = ["Bireysel","Kurumsal"]
    init() {
        UISegmentedControl.appearance().selectedSegmentTintColor = #colorLiteral(red: 0.05490196078, green: 0.3254901961, blue: 0.368627451, alpha: 1)
        UISegmentedControl.appearance().setTitleTextAttributes([.foregroundColor: UIColor.white], for: .selected)
        UISegmentedControl.appearance().setTitleTextAttributes([.foregroundColor: UIColor.init(displayP3Red: 0.05490196078, green: 0.3254901961, blue: 0.368627451, alpha: 1)], for: .normal)
    }
    
    var body: some View {
        VStack {
            
            Picker("Addresses", selection: $selectorIndex) {
                ForEach(0..<options.count) { index in
                    Text(self.options[index]).tag(index)
                }
            }
            .pickerStyle(SegmentedPickerStyle())
            .frame(width: 216, height: 28, alignment: .center)
            .cornerRadius(5)
            .foregroundColor(.white)
            
            // move the code here, to the ViewBuilder block
            if selectorIndex == 0 {
                Text("Bireysel")
                    .padding()
            } else {
                Text("Kurumsal")
                    .padding()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
