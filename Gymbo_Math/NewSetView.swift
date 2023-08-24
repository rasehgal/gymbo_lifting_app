//
//  ContentView.swift
//  Gymbo_Math
//
//  Created by Rashmi S on 8/12/23.
//

import SwiftUI

struct NewSetView: View {
    @State private var barWeight = ""
    
    var body: some View {
        VStack (spacing: 10) {
            Image(systemName: "figure.strengthtraining.traditional")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Set 1")
            Form {
                /*Toggle(isOn: .constant(true)) {
                 Text("Barbell Mode").toggleStyle(.switch)
                 }*/
                
                
                TextField("Weight", text:$barWeight)
                
                
                List {
                    Text("Make this the default barbell for this workout?")
                }
            }
            
                TabView {
                    DumbbellView()
                        .tabItem {
                                Label("Dumbbell", systemImage: "list.dash")
                        }

                    BarView()
                        .tabItem {
                            Label("Bar", systemImage: "square.and.pencil")
                        }
                }
            
            
        }
        
    }
}

struct NewSetView_Previews: PreviewProvider {
    static var previews: some View {
        NewSetView()
    }
}
