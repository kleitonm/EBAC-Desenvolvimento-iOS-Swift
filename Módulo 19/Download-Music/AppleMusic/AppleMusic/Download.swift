//
//  Download.swift
//  AppleMusic
//
//  Created by Kleiton Mendes on 21/08/22.
//

import Foundation

class Download: NSObject {
    var url: URL
    var task: URLSessionDownloadTask?
    
    init(url: URL) {
        self.url = url
    }
}
