//
//  StatsView.swift
//  StatsView
//
//  Created by Zheng-Xiang Ke on 2018/8/12.
//  Copyright © 2018年 Zheng-Xiang Ke. All rights reserved.
//

import UIKit

open class StatsView: UIView {
    open var title: NSAttributedString? {
        didSet {
            titleLabel.attributedText = title
            titleLabel.frame.size = titleLabel.sizeThatFits(frame.size)
            updateTitleLabelPosition()
        }
    }
    open var titleDescription: NSAttributedString? {
        didSet {
            titleDescriptionLabel.attributedText = titleDescription
            titleDescriptionLabel.frame.size = titleDescriptionLabel.sizeThatFits(frame.size)
            updateTitleDescriptionLabelPosition()
        }
    }
    open var titleDescriptionAlignment: NSTextAlignment = .center
    
    fileprivate var titleLabel = UILabel(frame: CGRect.zero)
    fileprivate var titleDescriptionLabel = UILabel(frame: CGRect.zero)
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

    override init(frame: CGRect) {
        super.init(frame: frame)
        initSubviews()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        initSubviews()
    }
    
    override open func layoutSubviews() {
        super.layoutSubviews()
        updateTitleLabelPosition()
    }
}

// MARK: - Fileprivate Methods
fileprivate extension StatsView {
    func initSubviews() {
        titleDescriptionLabel.textAlignment = .center
        titleDescriptionLabel.numberOfLines = 0
        titleDescriptionLabel.textColor = .gray
        addSubview(titleDescriptionLabel)
        
        titleLabel.textAlignment = .center
        titleLabel.numberOfLines = 0
        addSubview(titleLabel)
    }
    
    func updateTitleLabelPosition() {
        titleLabel.center = CGPoint(x: center.x - frame.origin.x, y: center.y - frame.origin.y)
        updateTitleDescriptionLabelPosition()
    }
    
    func updateTitleDescriptionLabelPosition() {
        switch titleDescriptionAlignment {
        case .left:
            titleDescriptionLabel.frame.origin = CGPoint(x: titleLabel.frame.origin.x, y: titleLabel.frame.origin.y + titleLabel.frame.size.height)
        case .right:
            titleDescriptionLabel.frame.origin = CGPoint(x: titleLabel.frame.origin.x + titleLabel.frame.size.width - titleDescriptionLabel.frame.size.width, y: titleLabel.frame.origin.y + titleLabel.frame.size.height)
        case .center:
            fallthrough
        default:
            titleDescriptionLabel.center = CGPoint(x: center.x - frame.origin.x, y: center.y - frame.origin.y + titleLabel.frame.size.height / 2 + titleDescriptionLabel.frame.size.height / 2)
        }
    }
}
