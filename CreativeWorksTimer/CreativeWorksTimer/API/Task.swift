//
//  Task.swift
//  CreativeWorksTimer
//
//  Created by Przemyslaw Pajak on 04/04/2020.
//  Copyright © 2020 CreativeWorks Systems, Inc. All rights reserved.
//

import SwiftUI

struct Task: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var state: String
}
