//
//  main.swift
//  lab1
//
//  Created by Канапия Базарбаев on 02.02.2024.
//

import Foundation

func add (_ num1: Double, _ num2: Double) -> Double {
    return num1 + num2
}

func subtract (_ num1: Double, _ num2: Double) -> Double {
    return num1 - num2
}

func multupli (_ num1: Double, _ num2: Double) -> Double {
    return num1 * num2
}

func devide (_ num1: Double, _ num2: Double) -> Double? {
    guard num2 != 0 else {
        return  nil
    }
    return num1 / num2
}

func calc (){
    print("введите число: ")
    guard let num1 = Double(readLine() ?? "") else {
        print("invalid input")
        return
    }
    
    print("введите оператор (+, -, *, /): ")
    guard let oper = readLine() else {
        print("invalid input")
        return
    }
    
    print("введите число: ")
    guard let num2 = Double(readLine() ?? "") else {
        print("invalid input")
        return
    }
        
    var result: Double?
    
    switch oper {
    case "+":
        result = add(num1, num2)
    case "-":
        result = subtract(num1, num2)
    case "*":
        result = multupli(num1, num2)
    case "/":
        result = devide(num1, num2)
    default:
        print("invalid input")
        return
    }
    
    if let result = result {
        print("result: \(result)")
    }
}
calc()


func combine () {
    print("введите первую строку:")
    let str1 = readLine() ?? ""
    
    print("введите вторую строку:")
    let str2 = readLine() ?? ""
    
    let combined = str1 + " " + str2
    print("результат объединения: \(combined)")
}

func flip () {
    print("введите строку для переворота:")
    let str = readLine() ?? ""
    
    let reverse = String(str.reversed())
    print("результат переворотв: \(reverse)")
}

func countChar () {
    print("введите строку для подсчёта символов:")
    let str = readLine() ?? ""
    
    let count = str.filter{ !$0.isWhitespace}.count
    print("количество символов: \(count)")
}

func searchStr () {
    print("введите строку:")
    let str = readLine() ?? ""
    
    print("введите подстроку для поиска:")
    let subStr = readLine() ?? ""
    
    if let range = str.range(of: subStr) {
        let startIndex = str.distance(from: str.startIndex, to: range.lowerBound)
        print("первое вхождение подстроки: \(subStr) на позиции \(startIndex)")
    } else {
        print("не найдена")
    }
}

combine()
flip()
countChar()
searchStr()
