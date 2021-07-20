class Human {
    
    var age: Int
    var name: String
    
    init(age: Int, name: String) {
        self.age = age
        self.name = name
    }
}

var human = Human(age: 20, name: "Igor")

var human3 = Human(age: 50, name: "Boris")

human3.age
human3.name

human3 = human // экземпляр класса передаётся по ссылке и если там что-то поменять, то в оригинале тоже изменится

human3.age = 22
human3.name = "Polina"

human.age
human.name // изменения human3 так же меняют и human

struct Human1 {
    
    var age: Int
    var name: String
}

var human1 = Human1(age: 25, name: "Maria") // в структурах не нужен инициализатор перед созданием

human1.age = 35
human1.age // если структура - константа, то свойства менять нельзя, а в классе можно

// value type - Int, String, Bool, struct
// reference type - enum, class

var human2 = Human1(age: 39, name: "Olga")

human2.age
human2.name

human2 = human1 // скопировали одну структуру в другую

human2.age
human2.name

human2.age = 45
human.name = "Vasia"

human2.age
human2.name

human1.age
human1.name // изменения в human2 никак не затрагивают human1, т.к. мы просто скопировали, никакой передачи по ссылке итд


struct Person {
    var name: String
    
    mutating func makeAnonymous() {
        name = "Anonymous"
    }
}

let string = "Do or not do, there is no try."

// Строка и многие другие Value types это структуры, так что у них есть св-ва и методы
print(string.count)
print(string.hasPrefix("Do"))
print(string.uppercased())
print(string.sorted())


