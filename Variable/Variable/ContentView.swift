//
//  ContentView.swift
//  Variable
//
//  Created by Lyvennitha on 03/09/21.
//

import SwiftUI

struct ContentView: View {
    @State public var InitStr: String = "Hello World from View!"
    var body: some View{
        NavigationView {
            NavigationLink(destination: WeatherView(Str: $InitStr)){//passing initstr //to Str of weatherView
                Text("Hello World")
                    .foregroundColor(.black)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct WeatherView: View{
    @Binding var Str: String
 var body: some View{
   Text(Str)
  }
}
