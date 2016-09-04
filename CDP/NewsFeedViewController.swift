//
//  NewsFeedViewController.swift
//  CDP
//
//  Created by Gautham Kumar on 03/09/16.
//  Copyright © 2016 Gautham Kumar. All rights reserved.
//

import UIKit

class NewsFeedViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        title = "News Feed"
        
        navigationController?.navigationBar.barTintColor = baseColor
        navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName : UIColor.whiteColor()]
        
        //Array that stores all the cards
        var cards: [Card] = []
        
        //Creating sample data
        var tempCard = Card(yPosition: 75, smallImage: UIImage(named: "dp")!, name: "Gautham Kumar", date: "Yesterday at 1:45 pm", caption: "Chilling at the Bahamas", mainImage: UIImage(named: "bahamas")!)
        cards.append(tempCard)
        
        tempCard = Card(yPosition: CGFloat(cards.count)*cardHeight+86, smallImage: UIImage(named: "dp2")!, name: "Sairam Kumar", date: "Yesterday at 11:15 am", caption: "The beauty of Paris", mainImage: UIImage(named: "paris")!)
        cards.append(tempCard)
        
        for card in cards {
            self.view.addSubview(card)
        }
                
        
    }
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        UIApplication.sharedApplication().statusBarStyle = .LightContent
    }
    
    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
        
        UIApplication.sharedApplication().statusBarStyle = .Default
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        tabBarItem = UITabBarItem(title: "News Feed", image: UIImage(named: "news"), tag: 0)
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
