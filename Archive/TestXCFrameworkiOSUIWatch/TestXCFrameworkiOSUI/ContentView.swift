//
//  ContentView.swift
//  TestXCFrameworkiOSUI
//
//  Created by Gene Backlin on 5/29/20.
//  Copyright © 2020 Gene Backlin. All rights reserved.
//

import SwiftUI
import UniKit

struct ContentView: View {
    var body: some View {
        Text(UniKit.hello("Adam Ant"))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
