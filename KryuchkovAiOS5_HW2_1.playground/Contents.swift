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


//
class Human: HumanSettings {
    
    // Свойства объекта человек (Имя, Фамилия, год рождения)
    var firstName: String
    var secondName: String
    var yearBirthday: Int
    

    func getAge(from: Int, to: Int) {
        print("")
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
   
    // Метод протокола изменить команду
    func changeTeam(from: Int, to: Int) {
        print("")
    }
    
    init(firstName: String, secondName: String, yearBirthday: Int, teamId: Int, teamName: String) {

        self.teamId = teamId
        self.teamName = teamName
        
        super.init(firstName: firstName, secondName: secondName, yearBirthday: yearBirthday)
    }
}

// НАСЛЕДОВАНИЕ (Судья - подкласс общего класса человек, который берет базовые свойства (такие как имя, фамилия, дата рождения), а также метод (высчитать возраст)
class Judge: Human {
    var level: Int
    
    init(firstName: String, secondName: String, yearBirthday: Int, level:Int) {
        
        self.level = level
        
        super.init(firstName: firstName, secondName: secondName, yearBirthday: yearBirthday)
    }
    
}
