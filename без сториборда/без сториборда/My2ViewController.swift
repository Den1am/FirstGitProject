//
//  My2ViewController.swift
//  без сториборда
//
//  Created by Dima on 09.06.2020.
//  Copyright © 2020 Dima. All rights reserved.
//

import UIKit

class ViewController3: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .orange
        createGreenView()
        createCloseButton2()
    }
    
    func createGreenView() {
        let greenCircle = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        greenCircle.backgroundColor = .green
        greenCircle.layer.cornerRadius = 50
        UIView.animate(withDuration: 2.0, delay: 0.1, options: [.autoreverse, .repeat], animations: {
            greenCircle.alpha = 0
        })
        
        view.addSubview(greenCircle)
        greenCircle.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate ([
            greenCircle.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            greenCircle.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            greenCircle.heightAnchor.constraint(equalToConstant: 100),
            greenCircle.widthAnchor.constraint(equalToConstant: 100)
        ])
    }
    //создаем кнопку, с помощью которой будем закрывать текущий VC
    func createCloseButton2() {
        let button2 = UIButton(type: .system)
        button2.setTitle("Close", for: .normal)
        button2.addTarget(self, action: #selector(closeButtonTapped2), for: .touchUpInside)
        view.addSubview(button2)
        //позиционирование
        button2.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate ([
            button2.topAnchor.constraint(equalTo: view.topAnchor),
            button2.leftAnchor.constraint(equalTo: view.leftAnchor),
            
        ])
        
    }
    //функция возврата на прошлый VC
    @objc func closeButtonTapped2() {
        dismiss(animated: true, completion: nil)
    }
}


