//
//  ResultsViewController.swift
//  PersonalityQuiz
//
//  Created by Eric Wei on 2017-09-12.
//  Copyright © 2017 EricWei. All rights reserved.
//

import Foundation
import UIKit


class ResultsViewController: UIViewController {
    
    var responses: [Answer]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    func calculatePersonalityResult() {
        var frequencyOfAnswers: [AnimalType:Int] = [:]
        let responseTypes = responses.map($0.type)
        
        for response in responseTypes {
            frequencyOfAnswers[response] = (frequencyOfAnswers[response] ?? 0) + 1
        }
        
        let frequentAnswersSorted = frequencyOfAnswers.sorted(by: {
            (pair1,pair2) -> Bool in
                return pair1.value > pair2.value
        })
        
        let mostCommonAnswer = frequentAnswersSorted.first!.key
    }
    
    
    
    
}
