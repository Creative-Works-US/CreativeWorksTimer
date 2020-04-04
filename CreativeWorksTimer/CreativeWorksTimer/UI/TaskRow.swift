//
//  TaskRow.swift
//  CreativeWorksTimer
//
//  Created by Przemyslaw Pajak on 04/04/2020.
//  Copyright © 2020 CreativeWorks Systems, Inc. All rights reserved.
//

import SwiftUI

struct TaskRow: View {
    var body: some View {
		HStack() {
			Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/).multilineTextAlignment(.leading).frame(maxWidth:.infinity)
			Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
				Text("Start")
			}
			Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
				Text("Stop")
			}
			Text("0.0").frame(maxWidth:80)
		}.padding(10)
    }
}

struct TaskRow_Previews: PreviewProvider {
    static var previews: some View {
        TaskRow()
    }
}
