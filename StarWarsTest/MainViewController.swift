//
//  MainViewController.swift
//  StarWarsTest
//
//  Created by Emmanuel Casañas Cruz on 7/14/17.
//  Copyright © 2017 Emmanuel. All rights reserved.
//

import UIKit



class MainViewController: UIViewController,TGLParallaxCarouselDelegate {

	@IBOutlet weak var carousel: TGLParallaxCarousel!
	
	var selectedIndex:Int?
	var isLaunching = true

	
	
    override func viewDidLoad() {
        super.viewDidLoad()
		self.addLogoToNavigationBar()
		
		carousel.delegate = self
		carousel.margin = 10
		carousel.selectedIndex = 2
		carousel.type = .threeDimensional
		
		isLaunching = false
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
		
	}
	
	//Mark: Carousel Delegate
	
	
	func numberOfItemsInCarouselView(_ carouselView: TGLParallaxCarousel) -> Int {
		return 5
	}
	
	func carouselView(_ carouselView: TGLParallaxCarousel, itemForRowAtIndex index: Int) -> TGLParallaxCarouselItem {
		return CustomView(frame: CGRect(x: 0, y: 0, width: 300, height: 150) , title: titleForIndex(index: index))
	}
	
	func carouselView(_ carouselView: TGLParallaxCarousel, didSelectItemAtIndex index: Int) {
		if isLaunching {
			selectedIndex = 0
		} else {
			selectedIndex = index
		}
	}
	
	func carouselView(_ carouselView: TGLParallaxCarousel, willDisplayItem item: TGLParallaxCarouselItem, forIndex index: Int) {
		print("")
	}
	
	//Mark : Home Methods
	
	func titleForIndex(index:NSInteger) -> String {
		var title = ""
		switch index  {
		case 0:
			title = "Films"
		case 1:
			title = "People"
		case 2:
			title = "Planets"
		case 3:
			title = "Starships"
		case 4:
			title = "Vehicles"
		default:
			break
		}
		return title
	}
	
	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		let destinationVC = segue.destination as! SelectionTableViewController
		destinationVC.selection = titleForIndex(index:(selectedIndex)!)
		
	}

	@IBAction func clickContinueButton(_ sender: Any) {
		self.performSegue(withIdentifier: "gotoSelectedSection", sender: nil)

	}
}


