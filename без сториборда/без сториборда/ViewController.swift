//
//  ViewController.swift
//  без сториборда
//
//  Created by Dima on 28.05.2020.
//  Copyright © 2020 Dima. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        createPresentButton()
    }
    //создаем кнопку, с помощью которой будем переходить на новый VC/
    func createPresentButton() {
        let button = UIButton(type: .system)
        let button2 = UIButton(type: .system)
        button.setTitle("Red  square", for: .normal)
        button.addTarget(self, action: #selector(presentButtonTapped), for: .touchUpInside)
        button.setTitleColor(UIColor.red, for: .normal)
        view.addSubview(button)
        button2.setTitle("Green  Circle", for: .normal)
        button2.addTarget(self, action: #selector(presentButtonTapped2), for: .touchUpInside)
        button2.setTitleColor(UIColor.green, for: .normal)
        view.addSubview(button2)
        //позиционирование
        button.translatesAutoresizingMaskIntoConstraints = false
        button2.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: -50),
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 0),
            button2.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 50),
            button2.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 0)
        ])
    }
    @objc func presentButtonTapped() {
        let vc = ViewController2()
        //переход на новый VC
        present(vc, animated: true, completion: nil)
    }
    @objc func presentButtonTapped2() {
        let vc_2 = ViewController3()
        present(vc_2, animated: true, completion: nil)
    }
}





