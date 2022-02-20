import UIKit

// ЗАДАЧА №1 и №2

// АбСТРАКЦИЯ - общая информация о человеке или его подклассе (игрок, судья)
protocol HumanSettings {
    
    // Свойство протокола человек (Имя, Фамилия, год рождения)
    var firstName: String {get set}
    var secondName: String {get}
    var yearBirthday: Int {get set}
    
    func getAge(from: Int, to: Int)
}

// АбСТРАКЦИЯ - общая информация о команде (данные правила могут быть применены как к команде, так и к игроку, который выступает за какой-нибудь клуб)
protocol TeamSettings {
    
    // Свойство протокола команда (ID команды и ее название)
    var teamId: Int {get}
    var teamName: String {get set}
    
    // Метод протокола изменить команду
    func changeTeam(from: Int, to: Int)
}


// Основной класс человек, которому принадлежат классы (игрок и судья)
class Human: HumanSettings {
    
    // Свойства объекта человек (Имя, Фамилия, год рождения)
    var firstName: String
    var secondName: String
    var yearBirthday: Int
    

    func getAge(from: Int, to: Int) {
        print("")
    }
    
    func description(){
        print("Это общий метод описания объекта основного класса Human")
    }
    
    init(firstName: String, secondName: String, yearBirthday: Int) {
        self.firstName = firstName
        self.secondName = secondName
        self.yearBirthday = yearBirthday
    }
}


// НАСЛЕДОВАНИЕ (Игрок - подкласс общего класса человек, который берет базовые свойства (такие как имя, фамилия, год рождения), а также метод (высчитать возраст)
// В тоже время, также класс Игрок должен иметь характеристики согласно протоколу - Команда (должен принимать все данные команды к которой он принадлежит)
class Player: Human, TeamSettings {
    var teamId: Int
    var teamName: String
    
    // ИНКАПСУЛЯЦИЯ
    // Приватное свойство (рейтинг игрока)
    private var playerLevel: Int = 0
    
    // Метод для изменения рейтинга игрока и описания почему
    func changePlayerLevel(newLevel: Int, decription: String) {
        print("")
    }
    
    // Метод позволяющий узнать рейтинг игрока
    func getPlayerLevel(){
        print("")
    }
   
    // Метод протокола изменить команду
    func changeTeam(from: Int, to: Int) {
        print("")
    }
    
    // ПОЛИМОРФИЗМ
    override func description(){
        print("Это общий метод описания объекта подкласса Player класса Human")
    }
    
    init(firstName: String, secondName: String, yearBirthday: Int, teamId: Int, teamName: String) {

        self.teamId = teamId
        self.teamName = teamName
        
        super.init(firstName: firstName, secondName: secondName, yearBirthday: yearBirthday)
    }
}


// НАСЛЕДОВАНИЕ (Судья - подкласс общего класса человек, который берет базовые свойства (такие как имя, фамилия, дата рождения), а также метод (высчитать возраст)
class Judge: Human {
    // ИНКАПСУЛЯЦИЯ
    // Приватное свойство (категория судьи)
    private var categoryLevel: Int = 0
    
    // Метод для изменения категории судьи и описания почему
    func changeCategoryLevel(newLevel: Int, decription: String) {
        print("")
    }
    
    // Метод позволяющий узнать категорию судьи
    func getCategoryLevel(){
        print("")
    }
    
    // ПОЛИМОРФИЗМ
    override func description(){
        print("Это общий метод описания объекта подкласса Judge класса Human")
    }
    
    init(firstName: String, secondName: String, yearBirthday: Int, categoryLevel:Int) {
        
        self.categoryLevel = categoryLevel
        
        super.init(firstName: firstName, secondName: secondName, yearBirthday: yearBirthday)
    }
    
}


// Основной класс Команда, действующий согласно протоколу настройки команды
class Team: TeamSettings {
    var teamId: Int = 0
    
    var teamName: String = ""
    
    func changeTeam(from: Int, to: Int) {
        print("")
    }
    
    init(teamId: Int, teamName:String) {
        self.teamId = teamId
        self.teamName = teamName
    }
}
