class Dog { // Базовый класс
    
    var name: String
    var breed: String
    
    var info: String {
        return "The breed of \(name) is \(breed)"
    }
    
    func makeNoise() -> String {
        return "Bark, Bark"
    }
    
    init (name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
}


class Corgi: Dog {
    
    var isHappy: Bool
    
    override func makeNoise() -> String {
        return super.makeNoise() + " " + "Whoof" // через super можно обращаться к методам родительского класса
    }
    
    init(name: String, breed: String, isHappy: Bool) {
        self.isHappy = isHappy
        super.init(name: name, breed: breed) // Чтобы был доступ к родительским св-вам, их нужно инициализировать в дочернем классе
    }
}

var corgi = Corgi(name: "Alisa", breed: "Corgi", isHappy: true)

corgi.makeNoise()
corgi.info
