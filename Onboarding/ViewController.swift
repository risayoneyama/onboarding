//
//  ViewController.swift
//  Onboarding
//
//  Created by Risa Yoneyama on 2017-05-19.
//  Copyright © 2017 Risa Yoneyama. All rights reserved.
//

import UIKit
import paper_onboarding

class ViewController: UIViewController, PaperOnboardingDataSource, PaperOnboardingDelegate{

    @IBOutlet weak var onboardingView: PaperOnboarding!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        onboardingView.dataSource = self
        onboardingView.delegate = self
    }
    
    func onboardingWillTransitonToIndex(_ index: Int) {
        
    }
    
    func onboardingDidTransitonToIndex(_ index: Int) {
        
    }
    
    func onboardingConfigurationItem(_ item: OnboardingContentViewItem, index: Int) {
        
    }
    
    func onboardingItemsCount() -> Int {
        return 3
    }
    
    func onboardingItemAtIndex(_ index: Int) -> OnboardingItemInfo {
        let backgroundColorOne = UIColor(red: 217/255, green: 72/255, blue: 89/255, alpha: 1)
        let backgroundColorTwo = UIColor(red: 106/255, green: 166/255, blue: 211/255, alpha: 1)
        let backgroundColorThree = UIColor(red: 168/255, green: 200/255, blue: 78/255, alpha: 1)
        let imageOne = UIImage(named:"rocket")!
        let imageTwo = UIImage(named:"brush")!
        let imageThree = UIImage(named:"notification")!
        let iconOne = UIImage()
        let iconTwo = UIImage()
        let iconThree = UIImage()
        
        let titleFont = UIFont(name: "AvenirNext-Bold", size: 24)!
        let descirptionFont = UIFont(name: "AvenirNext-Regular", size: 18)!
        
        return [(imageOne, "A Great Rocket Start", "Caramels cheesecake bonbon bonbon topping. Candy halvah cotton candy chocolate bar cake. Fruitcake liquorice candy canes marshmallow topping powder.", iconOne, backgroundColorOne, UIColor.white, UIColor.white, titleFont, descirptionFont),
                
                (imageTwo, "Design your Experience", "Caramels cheesecake bonbon bonbon topping. Candy halvah cotton candy chocolate bar cake. Fruitcake liquorice candy canes marshmallow topping powder.", iconTwo, backgroundColorTwo, UIColor.white, UIColor.white, titleFont, descirptionFont),
                
                (imageThree, "Stay Up To Date", "Get notified of important updates.", iconThree, backgroundColorThree, UIColor.white, UIColor.white, titleFont, descirptionFont)][index]
    }


}

