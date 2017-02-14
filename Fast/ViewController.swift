//
//  ViewController.swift
//  Fast
//
//  Created by LongND9 on 2/7/17.
//  Copyright © 2017 LongND9. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    
    let notificationSettings = UIUserNotificationSettings(types: [.alert, .badge, .sound], categories: nil)
    UIApplication.shared.registerUserNotificationSettings(notificationSettings)
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

  @IBAction func alarm(_ sender: Any) {
    let notification = UILocalNotification()
    notification.fireDate = NSDate(timeIntervalSinceNow: 5) as Date
    notification.alertBody = "Hey you! Yeah you! Swipe to unlock!"
    notification.alertAction = "be awesome!"
    notification.soundName = UILocalNotificationDefaultSoundName
    notification.userInfo = ["CustomField1": "w00t"]
    UIApplication.shared.scheduleLocalNotification(notification)
    
    
    guard let settings = UIApplication.shared.currentUserNotificationSettings else { return }
    
    if settings.types == .none {
      let ac = UIAlertController(title: "Can't schedule", message: "Either we don't have permission to schedule notifications, or we haven't asked yet.", preferredStyle: .alert)
      ac.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
      present(ac, animated: true, completion: nil)
      return
    }
  }

}


