//
//  DownloadService.swift
//  AppleMusic
//
//  Created by Kleiton Mendes on 21/08/22.
//

import Foundation

class DownloadService {
    
    var downloadsSession: URLSession!
    var activeDownloads: [URL: Download] = [:]
    
    func startDownload(_ track: URL) {
        let download = Download(url: track)
        download.task = downloadsSession.downloadTask(with: track)
        download.task!.resume()
        activeDownloads[download.url] = download
    }
}
