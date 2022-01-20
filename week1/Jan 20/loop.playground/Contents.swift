import UIKit

let name: String = "Christian"

func myFunction() {
    print("this is in function")
}

var closure: () -> Void = {
    print("My Closure")
}

closure()

closure = {
    print("new value")
}
closure()
