//
//  NetworkManager+Data.swift
//  HeliPort
//
//  Created by 梁怀宇 on 2020/3/23.
//  Copyright © 2020 lhy. All rights reserved.
//

/*
 * This program and the accompanying materials are licensed and made available
 * under the terms and conditions of the The 3-Clause BSD License
 * which accompanies this distribution. The full text of the license may be found at
 * https://opensource.org/licenses/BSD-3-Clause
 */

import Foundation

final class NetworkInfo {
    var ssid: String = ""
    var isConnected: Bool = false
    var rssi: Int = 0

    var auth = NetworkAuth()

    enum AuthSecurity: UInt32 {
        case NONE        = 0x00000000
        case USEGROUP    = 0x00000001
        case WEP40       = 0x00000002
        case TKIP        = 0x00000004
        case CCMP        = 0x00000008
        case WEP104      = 0x00000010
        case BIP         = 0x00000020    /* 11w */
    }

    init (ssid: String, connected: Bool, rssi: Int) {
        self.ssid = ssid
        self.isConnected = connected
        self.rssi = rssi
    }
}

final class NetworkAuth {
    var security: UInt32 = 0
    var option: UInt64 = 0
    var identity = [UInt8]()
    var username: String = ""
    var password: String = ""
}
