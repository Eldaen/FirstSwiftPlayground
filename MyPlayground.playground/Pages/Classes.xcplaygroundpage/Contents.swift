
class Human {
    
    var arms = 2
    var legs = 2
    var head = 1
    
    // Computed properties
    var status: String {
        if isQualified {
            return "\(name) is qualified for this job"
        } else {
            return "\(name) isn't qualified for this job"
        }
    }
    // Stored properties
    var name: String
    var age: Int
    var isQualified: Bool
    
    init(age: Int, name: String, isQualified: Bool) {
        
        self.age = age
        self.name = name
        self.isQualified = isQualified
    }
    
    func move() {
        print("\(name) is moving")
    }
}

var maria = Human(age: 25, name: "Maria", isQualified: true)
maria.move()
print(maria.status)


// Вычислялка дохода от инвестиций/вкладов
class Account {
    
    var sum: Double { // сумма вклада, хранимое св-во
        
        willSet (newSum) { // выполнится перед изменением или установкой св-ва
            print("Previous sum: \(self.sum), New sum: \(newSum)")
        }
        didSet (oldSum) { // а это уже после установки
            print("Current sum: \(self.sum), Old sum: \(oldSum)")
        }
    }
    var rate: Double = 0.07 // процентная ставка
    
    var profit: Double { // вычисляемое св-во
        
        get {
            return sum * rate
        }
        set (newProfit) { // эта штука помогает понять, какой величины должен быть вклад, чтобы получить ожидаемую прибыль
            self.sum = newProfit / rate
        }

    }
    
    init(sum: Double, rate: Double) {
        
        self.sum = sum
        self.rate = rate
    }
    
}

var myAcc = Account(sum: 1000, rate: 0.08)

print (myAcc.profit)

myAcc.profit = 1200000 // и вот сейчас оно сумму пересчитает
print(myAcc.sum)
