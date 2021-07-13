let apples = 5
let oranges = 3

print("I have \(apples) apples")
print("I have \(apples + oranges) fruits")

let count = 0..<10

let bikesCount = 1

switch bikesCount {
case 0:
    print("That sux, you should ride a bike")
case 1:
    print("Good, Good")
case 3:
    print("You're a bike maniac, I suppose")
default: print("I like cookies")
}

var person = (name: "Vasia", age: 30, isMarries: true, weight: 70.5)

var shoppingList = ["appleJuice", "candies", "chicken", "otherCrap"]

var array = Array<String>()
array = ["some ", "text ", "in the array "]

//var buff = ""
//
//for text in array {
//    buff += text
//}
//
//print(buff)

for (item, value) in array.enumerated() {
    print("Item \(item): \(value)")
}

var numbers: Set = [1, 5, 12, 13, 17, 6]

//for item in numbers.sorted() {
//    print(item)
//}

let oddNumbers: Set = [1, 3, 5, 7, 9]
let evenNumbers: Set = [0, 2, 4, 6, 8]
let primeNumbers: Set = [2, 3, 5, 7]

oddNumbers.union(evenNumbers)
oddNumbers.subtracting(primeNumbers).sorted()
oddNumbers.intersection(primeNumbers).sorted()

func firstFunc (text: String) {
    print(text)
}

firstFunc(text: "First Text to print")

func square (number: Double) -> Double {
    return number * number
}

square(number: 25.5)

func getUser () -> [String: String] {
    return ["firstName": "Ivan", "secondName": "Ivanov"]
}

getUser()

let user = getUser()
let userName = user["firstName"]

for names in user.values {
    print(names)
}

func getUser2() -> (first: String, second: String) {
    (first: "Ivan", second: "Ivanov")
}

let user2 = getUser2()

print(user2.first)

func greet (_ name: String, nicely: Bool = true) {
    
    if nicely {
        print("Hello, dear \(name)")
    } else {
        print("Hello \(name)")
    }
}

greet("Vasia")
greet("Petia", nicely: false)

func square2 (_ numbers: Int...) {
    
    for number in numbers {
        print("\(number) square is \(number * number)")
    }
}

square2(1, 3, 5, 7, 10)

// Клоужеры (видимо замыкания)

let printText = {
    print("Some text in closure")
}

printText()

let greetClosure = { (name: String) -> String in
    return "Hello, my dear \(name)"
}

// В замыканиях не используются имена параметров при вызове
print(greetClosure("Vasia"))

let noParamsClosure = {() -> Bool in
    return true
}

// Передаём замыкание в функцию

func travel(action: () -> Void) {
    print("I'm getting ready to go")
    action()
    print("I arrived")
}

travel(action: printText)

// Trailing closure, по идее, можно вот так передавать, если последний параметр функции - замыкание, надо понять зачем это так
travel() {
    print("Trailing clouse text")
}


func animate(duration: Double, animations: () -> Void) {
    print("Starting a \(duration) seconds animation")
    animations()
}

animate(duration: 3.22, animations: {
    print("Image")
})

// второй вариант с Trailing closure syntax, типа красивее. Мне пока кажется, что может сложнее читаться
animate(duration: 3.22) {
    print("Image")
}
