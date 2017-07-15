//
//  CustomView.swift
//  CarouselViewExample
//
//  Created by Matteo Tagliafico on 03/04/16.
//  Copyright © 2016 Matteo Tagliafico. All rights reserved.
//

import UIKit


@IBDesignable
class CustomView: TGLParallaxCarouselItem {
    
    // MARK: - outlets
    //@IBOutlet fileprivate weak var numberLabel: UILabel!
	@IBOutlet weak var blurEffectView: UIView!
	@IBOutlet weak var titleLabel: UILabel!
	@IBOutlet weak var bacgroundImage: UIImageView!
    
    // MARK: - properties
    fileprivate var containerView: UIView!
    fileprivate let nibName = "CustomView"
    
	
    
    
    // MARK: - init
    convenience init(frame: CGRect, title: String) {
        self.init(frame: frame)
        titleLabel.text = title
		bacgroundImage.image = UIImage(named: title)
		blurEffectView = self.blurEffect()


	}
	
    override init(frame: CGRect) {
        super.init(frame: frame)
        xibSetup()
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        xibSetup()
        setup()
    }
    
    func xibSetup() {
        containerView = loadViewFromNib()
        containerView.frame = bounds
        containerView.autoresizingMask = [UIViewAutoresizing.flexibleWidth, UIViewAutoresizing.flexibleHeight]
        addSubview(containerView)
    }
    
    func loadViewFromNib() -> UIView {
        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName: nibName, bundle: bundle)
        let view = nib.instantiate(withOwner: self, options: nil)[0] as! UIView
        return view
    }
	
	func blurEffect() -> UIView{
		
		let blurEffect = UIBlurEffect(style: UIBlurEffectStyle.dark)
		let blurEffectView = UIVisualEffectView(effect: blurEffect)
		blurEffectView.frame = UIScreen.main.bounds
		blurEffectView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
		return blurEffectView
	}

	
    // MARK: - methods
    fileprivate func setup() {
        layer.masksToBounds = false
        layer.shadowRadius = 30
        layer.shadowColor = UIColor.lightGray.cgColor
        layer.shadowOpacity = 0.65
    }
}
