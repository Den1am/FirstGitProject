//
//  MyViewController.swift
//  без сториборда
//
//  Created by Dima on 08.06.2020.
//  Copyright © 2020 Dima. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {
    
    let redSquereView = UIView()
    let closeButton = UIButton(type: .system )
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .yellow
        
        createCloseButton()
        createRedView()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        UIView.animate(withDuration: 2.0, delay: 0.0, options: [.autoreverse, .repeat], animations: {
            self.redSquereView.alpha = 0
        })
    }
    
    private func createRedView() {
        redSquereView.backgroundColor = UIColor.red

        view.addSubview(redSquereView)
        
        redSquereView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate ([
            redSquereView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            redSquereView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            redSquereView.heightAnchor.constraint(equalToConstant: 100),
            redSquereView.widthAnchor.constraint(equalToConstant: 100)
        ])
    }
    
    //создаем кнопку, с помощью которой будем закрывать текущий VC
    private func createCloseButton() {
        closeButton.setTitle("Close", for: .normal)
        closeButton.addTarget(self, action: #selector(closeButtonTapped), for: .touchUpInside)
        view.addSubview(closeButton)
        //позиционирование
        closeButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate ([
            closeButton.topAnchor.constraint(equalTo: view.topAnchor),
            closeButton.leftAnchor.constraint(equalTo: view.leftAnchor),
            
        ])
    }
    
    //функция возврата на прошлый VC
    @objc func closeButtonTapped() {
        dismiss(animated: true, completion: nil)
    }
    
}




