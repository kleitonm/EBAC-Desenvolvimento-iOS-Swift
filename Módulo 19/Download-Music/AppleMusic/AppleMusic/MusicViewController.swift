//
//  MusicViewController.swift
//  AppleMusic
//
//  Created by Kleiton Mendes on 21/08/22.
//

import Foundation
import UIKit
import AVKit
import AVFoundation

class MusicViewController: UIViewController {
    
    let downloadService = DownloadService()
    
    lazy var downloadsSession: URLSession = {
        let configuration = URLSessionConfiguration.background(withIdentifier: "me.carloshperc.bkgsessionconfiguration")
        return URLSession(configuration: configuration, delegate: self, delegateQueue: nil)
    }()
    
    lazy var downloadButton: UIButton = {
        let download = UIButton(frame: .zero)
        download.backgroundColor = .blue
        download.setTitle("Baixar", for: .normal)
        download.translatesAutoresizingMaskIntoConstraints = false
        download.layer.cornerRadius = 5
        download.addTarget(self, action: #selector(downloadTapped), for: .touchUpInside)
        return download
    }()
    
    lazy var playButton: UIButton = {
        let download = UIButton(frame: .zero)
        download.backgroundColor = .blue
        download.setTitle("Tocar", for: .normal)
        download.translatesAutoresizingMaskIntoConstraints = false
        download.layer.cornerRadius = 5
        download.addTarget(self, action: #selector(playDownload), for: .touchUpInside)
        return download
    }()
    
    lazy var downloadLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "baixar Música"
        label.textAlignment = .center
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupView()
        downloadService.downloadsSession = downloadsSession
    }
    
    @objc
    func downloadTapped(_ sender: UIButton) {
        for url in urlDownloads {
            downloadService.startDownload(URL(string: url)!)
        }
    }
    
    @objc
    func playDownload(_ sebder: UIButton) {
        let playerViewController = AVPlayerViewController()
        present(playerViewController, animated: true, completion: nil)
        let url = URL(string: String(describing: urlDownloads.first!))!
        let player = AVPlayer(url: url)
        playerViewController.player = player
        player.play()
    }
    
    let documentsPath = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
        func localFilePath(for url: URL) -> URL {
            return documentsPath.appendingPathComponent(url.lastPathComponent)
    }
}

extension MusicViewController: ViewCodeBuild {
    func buildViewHierarchy() {
        view.addSubview(downloadLabel)
        view.addSubview(downloadButton)
        view.addSubview(playButton)
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
            downloadLabel.heightAnchor.constraint(equalToConstant: 50),
            downloadLabel.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -40),
            downloadLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            downloadLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            
            downloadButton.leadingAnchor.constraint(equalTo: downloadLabel.leadingAnchor),
            downloadButton.trailingAnchor.constraint(equalTo: downloadLabel.trailingAnchor),
            downloadButton.heightAnchor.constraint(equalToConstant: 50),
            downloadButton.topAnchor.constraint(equalTo: downloadLabel.bottomAnchor, constant: 20),
            
            playButton.leadingAnchor.constraint(equalTo: downloadButton.leadingAnchor),
            playButton.trailingAnchor.constraint(equalTo: downloadButton.trailingAnchor),
            playButton.heightAnchor.constraint(equalToConstant: 50),
            playButton.topAnchor.constraint(equalTo: downloadButton.bottomAnchor, constant: 20),
        ])
    }
    func setupAdditionalConfiguration() { }
}
