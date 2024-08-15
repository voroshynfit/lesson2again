//
//  ViewController.swift
//  lesson2
//
//  Created by sebastian on 13.08.24.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        /*
         Создать две переменные String: одна только числа, вторая числа и буквы.
         
         ⭕️ Создать две переменные Double (одна с дробной частью, вторая - без).
         
         ⭕️ Привести каждую переменную к типу Int и вывести их в консоль.
         
         ⭕️ Найти среднее значение среди полученных Int переменных и вывести их в консоль.
         
         */
        
        var numOneStr: String = "4864"
        var numTwoStr: String = "4ds6fg"
        var numOneDoub: Double = 456.25
        var numTwoDoub: Double = 145
        
        let numOneInt = Int(numOneStr) ?? 0
        
        let numTwoInt = Int(numTwoStr.components(separatedBy: CharacterSet.decimalDigits.inverted).joined()) ?? 0
        let numThreeInt = Int(numOneDoub)
        let numFourInt = Int(numTwoDoub)
        print("\(numOneInt) , \(numTwoInt) , \(numThreeInt) , \(numFourInt)")
        print((numOneInt + numTwoInt + numThreeInt + numFourInt) / 4)
        
        /*
         ⭕️ Создать кортеж для автомобиля. Кортеж должен иметь три параметра: марка, год выпуска, объем двигателя.  Вывести в консоль информацию об автомобиле.

         ⭕️ Создать функцию, которая будет принимать кортеж такого вида и выводить в консоль информацию об автомобиле.

         ⭕️ Создать еще три кортежа только через typealias, заполнить их данными и положить их в массив.

         ⭕️ Создать функцию, которая будет принимать кортеж c типом typealias-а  и выводить в консоль информацию об автомобиле.

         ⭕️ В цикле пройтись по массиву и вывести информацию об автомобилях.

         */
        
        let auto: ( String, Int, Double) = ("Audi", 2001, 1.9)
        print(auto)
        
        func car(_ name: String, _ year: Int, _ engine: Double) {
            print(name)
            print(year)
            print(engine)
        }
        
        car("Audi", 2001, 1.9)
        
        typealias Home = (String, Int, Int)
        
        let house: Home = ("дом", 554, 46)
        let room: Home = ("комната", 456, 55)
        let kitchen: Home = ("кухня", 20, 21)
        
        let pediki: [Home] = [house, room, kitchen]
        
        for item in pediki {
            print("название: \(item.0)")
            print("кол-во комнат: \(item.1)")
            print("что то еще: \(item.2)")
        }
        
        
        /*⭕️ Создать функцию, которая будет принимать кортеж c типом typealias-а  и выводить в консоль информацию об автомобиле.
         */
        
        typealias Model = String
        typealias Year = Int
        typealias Engine = Double
        
        func cars(name: Model, year: Year, engine: Engine) {
            print(name)
            print(year)
            print(engine)
        }
        
        cars(name: "Audi", year: 2001, engine: 1.9)
        
//        ⭕️ В цикле пройтись по массиву и вывести информацию об автомобилях.
        
        typealias Machine = (String, Int)
        let bmw: Machine = ("g20", 2020)
        let volvo: Machine = ("x60", 2021)
        let apparats: [Machine] = [bmw, volvo]
        
        for item in apparats {
            print("название: \(item.0)")
            print("год: \(item.1)")
        }
    }
}
