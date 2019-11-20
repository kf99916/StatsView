//
//  ViewController.swift
//  StatsViewDemo
//
//  Created by Zheng-Xiang Ke on 2018/8/12.
//  Copyright © 2018年 Zheng-Xiang Ke. All rights reserved.
//

import UIKit
import StatsView

class ViewController: UIViewController {
    @IBOutlet weak var statsViewInRow1: StatsView!
    @IBOutlet weak var statsView1InRow2: StatsView!
    @IBOutlet weak var statsView2InRow2: StatsView!
    @IBOutlet weak var statsView1InRow3: StatsView!
    @IBOutlet weak var statsView2InRow3: StatsView!
    @IBOutlet weak var statsView1InRow4: StatsView!
    @IBOutlet weak var statsView2InRow4: StatsView!
    @IBOutlet weak var statsView3InRow4: StatsView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        setUpStatsView(statsViewInRow1, titles: [("9", "hr"), ("16", "min")], description: "Time", titleFont: UIFont.preferredFont(forTextStyle: .title1), titleDescriptionFont: UIFont.preferredFont(forTextStyle: .title3))
        setUpStatsView(statsView1InRow2, titles: [("99,916", "")], description: "Views", titleDescriptionAlignment: .left)
        setUpStatsView(statsView2InRow2, titles: [("16,819", "")], description: "Sessions", titleDescriptionAlignment: .left)
        setUpStatsView(statsView1InRow3, titles: [("99,916", "")], description: "MAU", titleColor: .red)
        setUpStatsView(statsView2InRow3, titles: [("819", "")], description: "DAU", titleColor: .red)
        setUpStatsView(statsView1InRow4, titles: [("916,819", "m")], description: "Distance", titleDescriptionColor: .brown, titleDescriptionAlignment: .right)
        setUpStatsView(statsView2InRow4, titles: [("819,916", "m")], description: "Ascent Altitude", titleDescriptionColor: .brown, titleDescriptionAlignment: .right)
        setUpStatsView(statsView3InRow4, titles: [("9.16819", "km/hr")], description: "Speed", titleDescriptionColor: .brown, titleDescriptionAlignment: .right)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

// MARK: - Fileprivate Methods
fileprivate extension ViewController {
    func setUpStatsView(_ view: StatsView, titles: [(title: String, unit: String)], description: String, titleFont: UIFont = UIFont.preferredFont(forTextStyle: .title3), titleColor: UIColor = .black, titleDescriptionFont: UIFont = UIFont.preferredFont(forTextStyle: .subheadline), titleDescriptionColor: UIColor = .gray, titleDescriptionAlignment: NSTextAlignment = .center) {
        view.titleDescriptionAlignment = titleDescriptionAlignment
        
        let titleAttributedString  = titles.reduce(NSMutableAttributedString()) { (result, arg) -> NSMutableAttributedString in
            result.append(NSMutableAttributedString(string: arg.title, attributes: [.font: titleFont, .foregroundColor: titleColor]))
            if arg.unit.count > 0 {
                result.append(NSMutableAttributedString(string: String(format: " %@ ", arg.unit), attributes: [.font: titleDescriptionFont, .foregroundColor: titleColor]))
            }
            return result
        }
        view.title = titleAttributedString
        view.titleDescription = NSMutableAttributedString(string: description, attributes: [.font: titleDescriptionFont, .foregroundColor: titleDescriptionColor])
    }
}
