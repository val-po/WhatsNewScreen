//
//  ViewController.swift
//  WhatsNewScreen
//
//  Created by valentine on 01.05.2021.
//

import UIKit
import WhatsNewKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let whatsNew = WhatsNew(title: "What`s New",
                              items: [
                                WhatsNew.Item(title: "Add Favorites",
                                              subtitle: "Now you can add favorites in the app!",
                                              image: UIImage(systemName: "star")),
                                WhatsNew.Item(title: "Volume",
                                              subtitle: "You can controlthe volume now!",
                                              image: UIImage(systemName: "volume")),
                                WhatsNew.Item(title: "Listen",
                                              subtitle: "Listen to the top songs around the world!",
                                              image: UIImage(systemName: "ear")),
                                WhatsNew.Item(title: "Settings",
                                              subtitle: "Control the quality of your music!",
                                              image: UIImage(systemName: "gear"))
                              ])
        
        let vc = WhatsNewViewController(whatsNew: whatsNew, theme: .whiteRed)
        
        present(vc, animated: true)
    }

}

