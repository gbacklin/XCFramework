//
//  ContentView.swift
//  TestXCFWatch Extension
//
//  Created by Gene Backlin on 5/30/20.
//  Copyright © 2020 Gene Backlin. All rights reserved.
//

import SwiftUI
import UtilKitWatch

struct ContentView: View {
    var body: some View {
        Text(Echo.hello("Adam Ant"))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
