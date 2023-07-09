//
//  Download.swift
//  Exercicio-19
//
//  Created by Kleiton Mendes on 28/08/22.
//

import Foundation

class Download: NSObject {
    var url: URL
    var task: URLSessionDownloadTask?
    
    init(url: URL) {
        self.url = url
    }
}
