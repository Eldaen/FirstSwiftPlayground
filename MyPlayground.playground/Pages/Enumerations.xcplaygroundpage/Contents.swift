enum Result {
    case success
    case failure
}

var result = Result.failure
result = .success // т.к. result имеет тип данных Result

let result2: Result
result2 = .success

enum Activity {
    case dancing
    case running(destination: String)
    case talking(topic: String)
    case singing(volume: Int)
}

let currentActivity = Activity.dancing

// default тут не нужен, но нужно перечислить все кейсы нашего енама
switch currentActivity {
case .dancing:
    print("Dance")
case .running:
    print("Run")
case .singing:
    print("Sing")
case .talking:
    print("Talk")
}

let talking = Activity.talking(topic: "Football")


enum Planet: Int {
    case mercury = 1
    case venus
    case earth
    case mars
}

let earth = Planet(rawValue: 3)

enum Phone: String {
    case Apple = "Iphone 12"
    case Samsung = "Galaxy s20"
    case Google = "Pixel 2"
}

var myPhone = Phone.Apple
print(myPhone)
print(myPhone.rawValue) // Raw Value получается это Iphone 12, если задано. Если бы не было, то был бы Apple
