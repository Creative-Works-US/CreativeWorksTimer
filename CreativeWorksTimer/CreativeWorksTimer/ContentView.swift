//
//  ContentView.swift
//  CreativeWorksTimer
//
//  Created by Przemyslaw Pajak on 04/04/2020.
//  Copyright © 2020 CreativeWorks Systems, Inc. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
		VStack() {
			HStack() {
				Text("00")
					.font(.largeTitle)
					.frame(maxWidth: .infinity, maxHeight: 40)
				Text(":")
					.font(.largeTitle)
					.frame(maxWidth: 10, maxHeight: 40)
				Text("00")
					.font(.largeTitle)
					.frame(maxWidth: .infinity, maxHeight: 40)
				}
				.padding(10)
				.frame(maxWidth:160)
			Divider()
			VStack() {
				Text("Tasks")
					.font(.title)
				List() {
					TaskRow()
				}
			}
		}
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
