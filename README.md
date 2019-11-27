# IAP Productsrequest error demo project #

A demo project that demonstrates an error that occurs when fetching products from the App Store. 

Specifically, after calling `SKProductsRequest(productIdentifiers: ["your_iap_identifier"])`, the following error is returned:

`Error Domain=ASDErrorDomain Code=507 "Error decoding object" UserInfo={NSLocalizedDescription=Error decoding object, NSLocalizedFailureReason=Attempted to decode store response}
`
This bug can be reproduced on an iPad (simulated) running iOS 13.2.3 and Xcode Version 11.2.1 (11B500). Please note that it only occurs when fetching an auto-renewable subscription.

*To reproduce this error*:

1. Clone this demo project
2. In App Store connect, create an auto-renewable subscription in app purchase
3. Make sure to use the correct bundle identifier
4. In ViewController.swift, set the product identifier to the ID of the newly created in app purchase
5. Run the app on the iPad (7th generation) simulator
6. Stop running the app
7. In the simulator menu, select "Erase all content and settings". Wait for it to restart.
8. Run the app again
9. Tap "Go"
10. You will see an error logged to the console: `Error Domain=ASDErrorDomain Code=507 "Error decoding object" UserInfo={NSLocalizedDescription=Error decoding object, NSLocalizedFailureReason=Attempted to decode store response}`

Note that after the you restart the iPad, the fetching will work.

More posts about this bug:

* https://stackoverflow.com/questions/58020258/requesting-an-in-app-purchase-in-ios-13-fails
* https://www.reddit.com/r/iOSProgramming/comments/dbw5b8/my_experience_on_having_my_app_rejected_twice/
