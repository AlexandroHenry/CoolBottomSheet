//
//  ContentView.swift
//  CoolBottomSheet
//
//  Created by Seungchul Ha on 2022/12/15.
//

import SwiftUI

struct ContentView: View {
    
    @State var showingBottomSheet = false
    
    var body: some View {
        VStack {
            Button {
                showingBottomSheet.toggle()
            } label: {
                Text("Tap Me")
            }
            .buttonStyle(.borderedProminent)
        }
        .padding()
        .sheet(isPresented: $showingBottomSheet) {
            BottomSheetView()
                .presentationDetents([.medium])
                .presentationDragIndicator(.visible)
        }
    }
}

struct BottomSheetView: View {
    var body: some View {
        Text("Select")
            .font(.title)
        HStack {
            Image(systemName: "star")
                .padding()
            Image(systemName: "bell")
                .padding()
            Image(systemName: "globe")
                .padding()
            Image(systemName: "house")
                .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
