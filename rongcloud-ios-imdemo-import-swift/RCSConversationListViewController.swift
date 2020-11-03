//
//  RCSConversationListViewController.swift
//  rongcloud-ios-imdemo-import-swift
//
//  Created by Jue on 2020/11/3.
//  Copyright © 2020 RC. All rights reserved.
//

import UIKit

class RCSConversationListViewController: RCConversationListViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    // 进行跳转会话页面
    override func onSelectedTableRow(_ conversationModelType: RCConversationModelType, conversationModel model: RCConversationModel!, at indexPath: IndexPath!) {
        let conversationViewController:RCSConversationViewController = RCSConversationViewController(conversationType: model.conversationType, targetId: model.targetId)
        navigationController?.pushViewController(conversationViewController, animated: true)        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
