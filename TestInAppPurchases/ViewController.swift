//
//  ViewController.swift
//  TestInAppPurchases
//
//  Created by Jordy van Kuijk on 27/11/2019.
//  Copyright © 2019 No Problem Software. All rights reserved.
//

import UIKit
import StoreKit

class ViewController: UIViewController, SKProductsRequestDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func loadProducts(sender: UIButton) {
        let productsRequest = SKProductsRequest(productIdentifiers: ["hodr_yearly_membership"])
        productsRequest.delegate = self
        productsRequest.start()
    }

    func requestDidFinish(_ request: SKRequest) {
        print("finished!")
    }

    func request(_ request: SKRequest, didFailWithError error: Error) {
        print("errored!")
        print(error)
    }

    func productsRequest(_ request: SKProductsRequest, didReceive response: SKProductsResponse) {
        print(response)
    }


}

