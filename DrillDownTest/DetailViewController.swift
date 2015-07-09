//
//  DetailViewController.swift
//  DrillDownTest
//
//  Created by 洋一郎 日野 on 2015/07/09.
//  Copyright (c) 2015年 GakkoNet. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var detailDescriptionLabel: UILabel!


    var detailItem: Term? {
        didSet {
            // Update the view.
            self.configureView()
        }
    }

    func configureView() {
        // Update the user interface for the detail item.
        if let term: Term = self.detailItem {
            if let label = self.detailDescriptionLabel {
                label.text = term.path
            }
            self.title = term.name
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.configureView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

