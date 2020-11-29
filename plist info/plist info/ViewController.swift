//
//  ViewController.swift
//  Info.plist
//
//  Created by The Developer

import UIKit

class ViewController: UIViewController {

    
    var getInfo = Bundle.main.object(forInfoDictionaryKey: "CFBundleShortVersionString")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label.center = view.center
        view.addSubview(label)
        print(getInfo!)
        
    }
    
    
    private var label: UILabel = {
        var getInfo = Bundle.main.object(forInfoDictionaryKey: "CFBundleShortVersionString")
        let label = UILabel()
        label.text = "v\(getInfo ?? "Can't get Version")"
        label.frame = CGRect(x: 50, y: 200, width: 250, height: 60)
        label.textAlignment = .center
        label.font = UIFont(name: "ArialMT", size: 50)
        return label
    }()

}
