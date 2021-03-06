//
//  InfoViewController.swift
//  RickMorty
//
//  Created by Alejandro Hernández Matías on 30/10/18.
//  Copyright © 2018 Alejandro Hernández Matías. All rights reserved.
//

import UIKit

class InfoViewController: RickMortyViewController {
    
    fileprivate lazy var infoPresenter: InfoPresenter = InfoPresenter(delegate: self)
    
    static func instantiate() -> InfoViewController{
        let infoStoryBoard = UIStoryboard(name: "Info", bundle: nil)
        let infoViewController = infoStoryBoard.instantiateViewController(withIdentifier: "infoViewController") as! InfoViewController
        return infoViewController
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.infoPresenter.viewDidLoad()
    }
    
    @IBAction func contactButtonAction(_ sender: Any) {
        self.infoPresenter.contactAction()
    }
    
    @IBAction func apiButtonAction(_ sender: Any) {
        self.infoPresenter.apiAction()
    }
}

extension InfoViewController: InfoPresenterDelegate {
}

