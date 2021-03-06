//
//  UPAnswersViewController.swift
//  SpartanSurvey
//
//  Created by Guillermo Colin on 11/26/16.
//  Copyright © 2016 SJSU. All rights reserved.
//

import UIKit
import CloudKit



class UPAnswersViewController: UIViewController {

    @IBOutlet weak var answersBlock: UITextView!
    
    //  Invoke the class CloudKitEngine for saving data in the cloud.
    let cloudKitEng = CloudKitEngine()
    
    
    //  var to tell user to refresh to see the answers.
    var screenDisplay:String = "Please refresh!"

    override func viewDidLoad() {
        super.viewDidLoad()

        answersBlock.isEditable = false
        answersBlock.text = screenDisplay
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func refresh(_ sender: UIBarButtonItem) {
        cloudKitEng.getAllAnswers(email: emailOfUser)
        if((recordFound.count > 0) && (!didRefresh(canvas: answersBlock, word: screenDisplay))){
            //answersBlock.text = "Wait!, some data came in"
            cloudKitEng.printAnswers(recordArray: recordFound, canvas: answersBlock)
        }
        
    }
    

    
    
    //  func to check initial refreshing
    func didRefresh(canvas: UITextView, word:String)->Bool{
        if (canvas.text != word){ return true}
        return false
    }
    //  TODO
    /* Apparently I am getting the answers saved in the array as wanted but still need to display them properly for the user to see
     */
    


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
