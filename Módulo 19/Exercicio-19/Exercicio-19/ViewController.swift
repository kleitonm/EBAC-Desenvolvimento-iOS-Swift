//
//  ViewController.swift
//  Exercicio-19
//
//  Created by Kleiton Mendes on 28/08/22.
//

import UIKit

class ViewController: UIViewController {
    
    let urlDownloads = "https://slik.com.br/wp-content/uploads/2022/04/como-montar-um-setup-produtivo.jpg"
        
    var downloadService = DownloadService()
    
    lazy var downloadsSession: URLSession = {
        let configuration = URLSessionConfiguration.background(withIdentifier: "me.kleitonm.bkgsessionconfiguration")
        return URLSession(configuration: configuration, delegate: self, delegateQueue: nil)
    }()
    
    private let imageView: UIImageView = {
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 300, height: 300))
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        return imageView
    }()
    
    private let downloadButton: UIButton = {
        let download = UIButton(frame: .zero)
        download.backgroundColor = .blue
        download.setTitle("Download", for: .normal)
        download.translatesAutoresizingMaskIntoConstraints = false
        download.layer.cornerRadius = 5
        download.addTarget(self, action: #selector(downloadTapped), for: .touchUpInside)
        return download
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(imageView)
        view.addSubview(downloadButton)
        imageView.center = view.center
        fetchImage()
        setupConstraints()
        downloadService.downloadsSession = downloadsSession
    }
    
    @objc
    func downloadTapped(_ sender: UIButton) {
        for url in urlDownloads {
            downloadService.startDownload(URL(string: urlDownloads)!)
        }
    }
    
    private func fetchImage() {
        guard let url = URL(string: urlDownloads) else {
            return
        }
        let getDataTask = URLSession.shared.dataTask(with: url, completionHandler: {data, _, error in
            guard let data = data, error == nil else {
                return
            }
            DispatchQueue.main.sync {
                let image = UIImage(data: data)
                self.imageView.image = image
            }

        })
        getDataTask.resume()
    }
    
    let documentsPath = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
        func localFilePath(for url: URL) -> URL {
            return documentsPath.appendingPathComponent(url.lastPathComponent)
    }
    
     func urlSession(_ session: URLSession, downloadTask: URLSessionDownloadTask, didWriteData bytesWritten: Int64, totalBytesWritten: Int64, totalBytesExpectedToWrite: Int64) {
        if let url = downloadTask.originalRequest?.url, let _ = downloadService.activeDownloads[url] {
            let progress = round(Float(totalBytesWritten) / Float(totalBytesExpectedToWrite) * 100)

            print("carregando: \(progress) %")
        }
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
            
            downloadButton.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 10),
            downloadButton.trailingAnchor.constraint(equalTo: imageView.trailingAnchor),
            downloadButton.leadingAnchor.constraint(equalTo: imageView.leadingAnchor),
            downloadButton.heightAnchor.constraint(equalToConstant: 50),
            downloadButton.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 20),
        ])
    }

}

