//
//  ViewCodeBuild.swift
//  AppleMusic
//
//  Created by Kleiton Mendes on 21/08/22.
//

import Foundation

protocol ViewCodeBuild {
    func buildViewHierarchy()
    func setupConstraints()
    func setupAdditionalConfiguration()
    func setupView()
}

extension ViewCodeBuild {
    func setupView() {
        buildViewHierarchy()
        setupConstraints()
        setupAdditionalConfiguration()
    }
}
