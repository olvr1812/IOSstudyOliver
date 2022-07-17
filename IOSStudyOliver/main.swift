//
//  main.swift
//  IOSStudyOliver
//
//  Created by Оливер Салихов on 13.07.2022.
//
import Foundation

let dig: Double = 0.5

var dig2: Int = 6

let sum = dig + Double(dig2)

print(sum)

var array: [Int] = [1, 2, 3, 4, 5]

var array1 = array.map() { i in
    i * i}

print(array1)

var airports = ["Airport" : "London", "Airport2": "Paris", "Airport3": "Moscow"]


airports["Airpot2"] = "Humburg"

func summ(dig: Double, dig2: Float) -> String{
    
    let sum = Double(dig2) + dig
    
    return String(sum)
}

print(summ(dig: 10.0, dig2: 12.1))



// Homework 1
// Не получается выполнить функцию print в Homework.swift

// 1. Арефметическая прогрессия
func arifmProgress(_ a: Double, _ d: Double, _ numOfMembers: Int) -> [Double] {
    var memberOfProgress = a
    var arrWithMembers = [Double]()
    if numOfMembers > 0 {
        for i in 0..<numOfMembers {
            memberOfProgress = a + Double(i) * d
            arrWithMembers.append(memberOfProgress)
        }
    } else { return [0] }
    
    return arrWithMembers
    }

var arProg = arifmProgress(10, 4, 5)

print(arProg)

// 2. Геометрическая прогрессия

func geomProgress(_ b: Double, _ q: Double, _ n: Int) -> [Double] {
    var memberOfProgress = Double()
    var arrWithMembers = [Double]()
    if n > 0 {
        for i in 0..<n {
            memberOfProgress = b * pow(q, Double(i))
            arrWithMembers.append(memberOfProgress)
        }
    } else { return [0] }
    
    return arrWithMembers
}

var geomProg = geomProgress(2, 10, 10)

print(geomProg)

// 3. Ликарства и симптомы

func treatment(_ symptom: String) -> String {
    
    let dragsAndSymptoms: [String : String] = ["Головная боль": "Цитрамон", "Спазмы в животе": "Ношпа", "Отравление": "Активированный уголь", "Насморк": "Нозенакс", "Температура": "Антигриппин", "Боль в горле": "Ингалипт", "Кашель": "Бронхинорм", "Растяжение": "Фастумгель", "Давление": "АД-Норма", "Бессонница": "Доппельгерц"]
    
    let dragsAndDose: [String : String] = ["Цитрамон": "1 таблетка", "Ношпа": "2 таблетки", "Активированный уголь": "1 таблетка на 10 кг веса", "Нозенакс": "2 нажатия 3 раза в день", "Антигриппин": "1 пакет развести с водой", "Ингалипт": "2 нажатия утром и вечером", "Бронхинорм": "3 ложки 3 раза в день", "Фастумгель": "0,1 милиграмма на 1 кв. см поражения", "АД-Норма": "2 таблетки 2 раза в день", "Доппельгерц": "10 капель за 1 час до сна"]
    
    
    
    enum syptoms: String {
        case headach = "Головная боль"
        case stomach = "Спазмы в животе"
        case poison = "Отравление"
        case nose = "Насморк"
        case temperature = "Температура"
        case throat = "Боль в горле"
        case cough = "Кашель"
        case sprained = "Растяжение"
        case pressure = "Давление"
        case insomnia = "Бессонница"
    }
    
    let symptom1 = syptoms.init(rawValue: symptom)
    
    switch symptom1 {
    case .headach: return "Принимать \(dragsAndSymptoms["Головная боль"]!) \(dragsAndDose[dragsAndSymptoms["Головная боль"]!]!)"
    case .stomach: return "Принимать \(dragsAndSymptoms["Спазмы в животе"]!) \(dragsAndDose[dragsAndSymptoms["Спазмы в животе"]!]!)"
    case .poison: return "Принимать \(dragsAndSymptoms["Отравление"]!) \(dragsAndDose[dragsAndSymptoms["Отравление"]!]!)"
    case .nose: return "Принимать \(dragsAndSymptoms["Насморк"]!) \(dragsAndDose[dragsAndSymptoms["Насморк"]!]!)"
    case .temperature: return "Принимать \(dragsAndSymptoms["Температура"]!) \(dragsAndDose[dragsAndSymptoms["Температура"]!]!)"
    case .throat: return "Принимать \(dragsAndSymptoms["Боль в горле"]!) \(dragsAndDose[dragsAndSymptoms["Боль в горле"]!]!)"
    case .cough: return "Принимать \(dragsAndSymptoms["Кашель"]!) \(dragsAndDose[dragsAndSymptoms["Кашель"]!]!)"
    case .sprained: return "Принимать \(dragsAndSymptoms["Растяжение"]!) \(dragsAndDose[dragsAndSymptoms["Растяжение"]!]!)"
    case .pressure: return "Принимать \(dragsAndSymptoms["Давление"]!) \(dragsAndDose[dragsAndSymptoms["Давление"]!]!)"
    case .insomnia: return "Принимать \(dragsAndSymptoms["Бессонница"]!) \(dragsAndDose[dragsAndSymptoms["Бессонница"]!]!)"
    default: return "Вас уже не вылечить("
    }
}

print(treatment("Головная боль"))
print(treatment("Боль в горле"))


// Циклы

// 1. Squares from 10 to 20

func sqrOfNums() -> [Int] {
    var num = 10
    var nums = [Int]()
    
    while num <= 20 {
        nums.append(num * num)
        num += 1
    }
    return nums
}

var newVar = sqrOfNums()

print(sqrOfNums)

// 2. Сумма чисел от 1 до n. Значение n вводится с клавиатуры

func sumOfNums(_ n: Int) -> Int {
    var sum = 0
    for i in 1...n {
        sum += i
    }
    
    return sum
}

var numsSum = sumOfNums(10)

print(numsSum)

// 3. Произведение чисел от 1 до n. n вводится с клавиатуры
// Почему reduce(0) начинает список с нуля, если в списке нет нуля?

func productArrayOfNums(count n: Int) -> Double {
    var arrayForNums = [Double]()
    for i in 1...n {
        arrayForNums.append(Double(i))
    }
    print(arrayForNums.reduce(1, *))
    return arrayForNums.reduce(1, *)
}

var productNums = productArrayOfNums(count: 4)

print(productNums)

// 4. Количество отрицательных, положительных чисел и нулей

func whatsNums(nums: [Double]) -> String {
    var possitiveNums: Int = 0
    var negativeNums: Int = 0
    var zeroes: Int = 0
    for i in nums {
        if i > 0 {
            possitiveNums += 1
        } else if i < 0 {
                negativeNums += 1
        } else {
                    zeroes += 1
                }
    }
    return "Положительных чисел: \(possitiveNums)\nОтрицательных чисел: \(negativeNums)\nНулей: \(zeroes)"
}

print(whatsNums(nums: [1.5, 12.1, -6, 7.12, -12, 0, 25, 0, 0, -17, 4, -6]))

// 5. Составьте программы перевода старинных русских мер длины, торгового и аптекарского веса(счетчик цикла от 1 до 10)

func ancientRussia(nameOfMeasure n: String) {
    
    enum measures: String {
        case sajenMetr = "Сажень в метры"
        case inchSanti = "Дюйм в сантиметры"
        case footMetr = "Фут в метры"
        case drahmGramm = "Драхм в граммы"
        case ouncesGramm = "Унций в граммы"
        case lbKilo = "Фунт в киллограммы"
        case arshinMetr = "Аршин в метры"
        case zolotnikGramm = "Золотник в граммы"
        case inchMilimetr = "Дюймы в метры"
    }
    
    let sajenMetr = 2.1366
    let inchSanti = 2.5
    let footMetr = 0.3048
    let drahmGramm = 3.7325
    let ouncesGramm = 29.86
    let lbKilo = 0.40951
    let arshinMetr = 0.7112
    let zolotnikGramm = 4.2657
    let inchMilimetr = 25.3995
    
    let measere = measures.init(rawValue: n)
    
    switch measere {
    case .sajenMetr: for i in 1...10 {
        print("\(i) сажень равен \(Double(i) * sajenMetr) метра")
    }
    case .inchSanti: for i in 1...10 {
        print("\(i) дюйм равен \(Double(i) * inchSanti) сантиметра")
    }
    case .footMetr: for i in 1...10 {
        print("\(i) фут равен \(Double(i) * footMetr) метра")
    }
    case .drahmGramm: for i in 1...10 {
        print("\(i) драхм равен \(Double(i) * drahmGramm) грамм")
    }
    case .ouncesGramm: for i in 1...10 {
        print("\(i) унций равен \(Double(i) * ouncesGramm) грамм")
    }
    case .lbKilo: for i in 1...10 {
        print("\(i) фунт равен \(Double(i) * lbKilo) килограмм")
    }
    case .arshinMetr: for i in 1...10 {
        print("\(i) аршин равен \(Double(i) * arshinMetr) метра")
    }
    case .zolotnikGramm: for i in 1...10 {
        print("\(i) золотник равен \(Double(i) * zolotnikGramm) грамм")
    }
    case .inchMilimetr: for i in 1...10 {
        print("\(i) дюйм равен \(Double(i) * inchMilimetr) метра")
    }
    default: print("Введен не корректный перевод")
    }
}

ancientRussia(nameOfMeasure: "Сажень в метры")

ancientRussia(nameOfMeasure: "Золотник в граммы")

// 6. В сберкассу на трёхпроцентный вклад положили S рублей.Какой станет сумма вклада через N лет.
// Пишу пример с капитализацией вклада

func depositAtBank(deposit S: Double, year N: Int) -> String {
    
    var money = S
    
    for _ in 1...N {
        money += money * 0.03
    }
    
    return "Ваш вклад составит \(money)"
}

print(depositAtBank(deposit: 1000, year: 5))

// 7. Ввести с клавиатуры 10 пар чисел. сравнить числа в каждой паре и напечатать большие из них.

func maxNum(nums n: [[Double]]) -> [Double] {
    var max = [Double]()
    for i in n {
        max.append(i.max()!)
    }
    return max
}

print(maxNum(nums: [[12.0, 222.0], [13, -5], [0, 4.4], [1.25, 11111.1111], [21, 43], [-5, 4.99], [1, 2], [4, -15], [-4, 7], [6381, 222]]))

// 8. Даны натуральные числа от 20 до 50.Напечатать те из них, которые делятся на 3, но не делятся на 5.

func multiplesThreeNotSeven() -> [Double] {
    var multiples = [Double]()
    
    for i in 20...50 {
        if i % 3 == 0 && i % 7 != 0 {
            multiples.append(Double(i))
        }
    }
    
    return multiples
}

print(multiplesThreeNotSeven())

// 9. Даны натуральные числа от 35 до 87. Найти и напечатать те из них, которые при делении на 7 дают остаток 1, 2 или 5.

for i in 35...87 {
    if i % 7 == 1 || i % 7 == 2 || i % 7 == 5 {
        print(i)
    }
}

// 10. Даны натуральные числа от 1 до 50. Найти сумму тех из них, которые делятся на 5 или на 7.

for i in 1...50 {
    if i % 5 == 0 || i % 7 == 0 {
        print(i)
    }
}

// 11. Напечатать те из двузначных чисел которые делятся на 4, но не делятся на 6.

for i in 10...99 {
    if i % 4 == 0 && i % 6 != 0 {
        print(i)
    }
}

// 12. Найти произведение двузначных нечетных чисел кратных 13.

for i in 10...100 {
    for k in 10...100 {
        if (i * k) % 13 == 0 {
            print(i * k)
        }
    }
}

// 13. Найти сумму чисел от 100 до 200 кратных 17.

for i in 100...200 {
    for k in 100...200 {
        if (i + k) % 17 == 0 {
            print(i + k)
        }
    }
}


// 14. Составьте программу, которая вычисляет сумму квадратов чисел от 1 до введенного вами целого числа N.

func sumSquares(n: Int) {
    for i in 1...n {
        for k in 1...n {
            print(pow(Double(i), 2) + pow(Double(k), 2))
        }
    }
}

sumSquares(n: 10)


// 15. Записать программу, которая по заданным значениям чисел a и b находит a в степени b.

func powNums(a: Double, b: Double) {
    let c = pow(a, b)
    
    let isInteger = floor(a) == a
    if isInteger {
        print(c)
    } else if b >= 0{
        print(c)
    } else { print("Введено не коррекиное значение")}
}

powNums(a: 12.1, b: -2)
powNums(a: 12.1, b: 2)
powNums(a: 12, b: -2)

// 16. В бригаде, работающей на уборке сена, имеется N сенокосилок.Первая сенокосилка работала m часов, а каждая следующая на 10 минут больше, чем предыдущая.Сколько часов проработала вся бригада?

func workersAndLownmower(n: Int, m: Int) {
    
    guard n > 0, m > 0 else { print("Не корректное число рабочих или/и времени")
        return
    }
    
    var time = 0
    
    for i in 0..<n {
        time += m + (10 * i)
    }
    
    print("В сумме бригада проработала \(time) минут")
}


workersAndLownmower(n: 1, m: 60)


// 17. В ЭВМ вводятся по очереди данные о росте N учащихся класса. Определить средний рост учащихся класса.

func midOfHeight(students: [Double]) {
    print(students.reduce(1, +) / Double(students.count))
}

midOfHeight(students: [162, 160, 172.2, 210.5, 150, 145.6, 180, 170])


// 18. Задано натуральное число N. Найти количество натуральных чисел, не превосходящих N и не делящихся ни на одно из чисел 2,3,5.

func nutNums(n: Int) {
    for i in 0...n {
        if i % 2 != 0 && i % 3 != 0 && i % 5 != 0 {
            print(i)
        }
    }
}

nutNums(n: 30)

// 19. Два двузначных числа, записанных одно за другим, образуют четырёхзначное число, которое делится на их произведение. Найти эти числа.


for i in 10...99 {
    for k in 10...99 {
        guard let m = Int("\(i)\(k)") else { break }
        if m % (i * k) == 0 {
            print(m)
        }
    }
}


// 20. Даны два двузначных числа А и В. Из этих чисел составили 2 четырехзначных числа: первое число получили путем написания сначала числа А, затем В. Для получения второго числа сначала записали число В, затем А. Найти числа А и В если известно , что первое четырехзначное число нацело делится на 99, а второе на 49.

for a in 10...99 {
    for b in 10...99 {
        guard let m = Int("\(a)\(b)"), let n = Int("\(b)\(a)") else { break }
        
        if m % 99 == 0 && n % 49 == 0 {
            print(a, b)
        }
    }
}

// 21. Дано натуральное n. вычислить 1/(2 в квадрате) + 1/(4 в квадрате)+ ... + 1/(2n в квадрате) ( в квадрате только n)

func unknownProgress1(n: Int) {
    var sum: Double = 0
    var count: Int = 2
    
    while count <= (2 * (n * n)) {
        sum += 1 / Double(count)
        count += 2
    }
    
    print(sum)
}

unknownProgress1(n: 2)

// 22. Дано натуральное n. вычислить: 1 + 1/2 + 1/3 + 1/4 + ... + 1/n.

func unknownProgress2(n: Int) {
    var sum: Double = 0
    
    for i in 1...n {
        sum += 1 / Double(i)
    }
    print(sum)
}

unknownProgress2(n: 4)

// 23.Вычислить : 1+2+4+8+...+ 2 в 10 степени.

func sumNumsProgress() {
    var count: Double = 1
    var sum: Double = 1
    
    while count <= pow(2, 10) {
        sum += count * 2
        count = 2 * count
    }
    
    print(sum)
    
}

sumNumsProgress()

// 24. Вычислить: (1+2)*(1+2+3)*...*(1+2+...+10).

var productSumFromNum = 1
var sumNums = 0

for i in 2...10 {
    for k in 1...i {
        sumNums += k
    }
    productSumFromNum = productSumFromNum * sumNums
    sumNums = 0
    print(productSumFromNum)
}

//25. Даны действительное (а) и натуральное (n). вычислить: a(a+1)(a+2)...(a+n-1)

func progressSumAndProduct(a: Double, n: Int) {
    var sum: Double = 0
    var prod: Double = 1
    for i in 0..<n {
        sum = a + Double(i)
        prod *= sum
    }
    
    
    
    print(prod)
}

progressSumAndProduct(a: 5.2, n: 4)

// 26. Даны действительно х и натуральное n. вычислить: sin x + sin x в квадрате + ... sin x в степени n.

func sumSinSquare(x: Double, n: Int) {
    var sinSum: Double = 0
    
    for i in 1...n {
        sinSum += pow(sin(x), Double(i))
    }
    
    print(sinSum)
}

// 27. У первокласника пети m рублей.Мороженое стоит k рублей. Петя решил наесться досыта мороженого, для этого он покупал по одному мороженому и съедал его до тех пор, пока ему хватало денег. Как пете узнать, сколько денег останется у него в конце концов? учтите, что петя делить еще не умеет, а умеет только вычитать и складывать. сколько мороженых он может съесть?.

func iceCreamAndPetia(money m: Double, cost k: Double) {
    var money = m
    var quantityIcecream = 0

    while Int(money) / Int(k) >= 1 {
        money -= k
        quantityIcecream += 1
    }
    
    print(quantityIcecream)
}


iceCreamAndPetia(money: 100.9, cost: 5)


// 28. Бизнессмен взял ссуду m тысяч рублей в банке под 20% годовых. через сколько лет его долг превысит s тысяч рублей, если за это время он не будет отдавать долг.

func creditForBussinesman(m: Double, s: Double) {
    var credit = m
    var years = 0
    let controlSum = 1000 * s
    
    while credit <= controlSum {
        credit += credit * 0.2
        years += 1
    }
    
    let y = (round(100 * credit) / 100)
    
    print("Через \(years) лет долг привысит \(controlSum) и составит \(y)")
}

creditForBussinesman(m: 1000, s: 100)

// 29. C помощью оператора while напишите программу вывода всех четных чисел в диапазоне от 2 до 100 включительно.

func oneToIOO() {
    var n = [Int]()
    var count: Int = 2
    
    while count <= 100 {
        if count % 2 == 0 {
            n.append(count)
        }
        count += 1
    }
    
    print(n)
}

oneToIOO()

// Интересные задачки

// 1. Функция расчета максимальной мощности в зависимости от сечения кабеля. В консоль вывести текст.

func maxPfromCabelCross(maxP p: Double) {
    
    switch p {
    case 0...4.1: print("Сечение кабеля 1,5 мм в кв.")
    case 4.2...5.9: print("Сечение кабеля 2,5 мм в кв.")
    case 6...8.3: print("Сечение кабеля 4 мм в кв.")
    case 8.4...10.1: print("Сечение кабеля 6 мм в кв.")
    case 10.2...15.4: print("Сечение кабеля 10 мм в кв.")
    default: print("Введено не корректное значение")
    }
    
}

maxPfromCabelCross(maxP: 12)
maxPfromCabelCross(maxP: 16)
maxPfromCabelCross(maxP: 3.2)

// 2. Функция проверки бортовых систем самолета на исправность. В одной функции 3 бортовые системы. Вывести текст на экран.

func checkAircraftSys(Sys1: Bool, Sys2: Bool, Sys3: Bool) {
    
    var checkCount: Int = 0
    if Sys1 {
        print("Сисстема 1 в нормальном режиме")
        checkCount += 1
    } else { print("Отказ систесмы 1")}
    
    if Sys2 {
        print("Сисстема 2 в нормальном режиме")
        checkCount += 1
    } else { print("Отказ систесмы 2")}
    
    if Sys3 {
        print("Сисстема 3 в нормальном режиме")
        checkCount += 1
    } else { print("Отказ систесмы 3")}
    
    if checkCount < 2 {
        print("Полет не возможен")
    } else { print("К полету готов")}
}

checkAircraftSys(Sys1: true, Sys2: false, Sys3: false)

checkAircraftSys(Sys1: false, Sys2: true, Sys3: true)

checkAircraftSys(Sys1: true, Sys2: false, Sys3: true)


// 3. Каждому дню недели присвоена цифра, от 1 до 7. Сделать функцию, которая при вводе числа, будет писать в консоль день недели.

func dayOfWeek(numOfDay: Int) {
    switch numOfDay {
    case 1: print("Понедельник")
    case 2: print("Вторник")
    case 3: print("Среда")
    case 4: print("Четверг")
    case 5: print("Пятница")
    case 6: print("Суббота")
    case 7: print("Восекресенье")
    default: print("Допустимое значение от 1 до 7")
    }
}

dayOfWeek(numOfDay: 5)
dayOfWeek(numOfDay: 8)

// 4. Сделать функцию: расчет индекса массы тела.

func massIndex(height: Double, mass: Double) {
    let indexOfMass = mass / pow(height, 2)
    
    switch indexOfMass {
    case 0..<25.0: print("Индекс: \(indexOfMass). Это норма")
    case 25.0..<30.0: print("Индекс: \(indexOfMass). Избыточный вес")
    case 30.0..<35.0: print("Индекс: \(indexOfMass). I степень ожирения")
    case 35.0..<40.0: print("Индекс: \(indexOfMass). II степень ожирения")
    case _ where indexOfMass > 40.0: print("Индекс: \(indexOfMass). III степень ожирения")
    default: print("Индекс не может быть отрицательным")
    }
}

massIndex(height: 1.76, mass: 74)

//5. Сделать функцию, которая будет считать количество дней в году. Важно учесть високосный год.

func howManyDaysInYear(year: Int) {
    if year % 400 == 0 {
        print("Год весокосный 366 дней")
    } else if year % 100 == 0 {
        print("Год не весокосный 365 дней")
    } else if year % 4 == 0 {
        print("Год весокосный 366 дней")
    } else {
        print("Год не весокосный 365 дней")
    }
}


howManyDaysInYear(year: 176)

// Написать функцию, которая вычисляет объем цилиндра. Параметрами функции должны быть радиус и высота цилиндра.

func volumeCylinder(height h: Double, radius r: Double) {
    let cylinderSection: Double = Double.pi * pow(r, 2)
    let volumeOfCylinder = cylinderSection * h
    print("Объем цилиндра = \(volumeOfCylinder)")
}

volumeCylinder(height: 14.5, radius: 3.1)

//Написать функцию, которая возвращает максимальное из двух целых чисел, полученных в качестве аргумента.

func itsMore(first: Double, second: Double) -> Double {
    if first > second {
        return first
    } else if second > first {
        return second
    } else { print("Числа одинаковые")
        return first
    }
}

print(itsMore(first: 146.2, second: 145.5))
print(itsMore(first: 145.2, second: 145.2))


// Написать функцию, которая сравнивает два целых числа и возвращает результат сравнения в виде одного из знаков: >, < или =.

func comprasion(first: Int, second: Int) -> String {
    if first > second {
        return ">"
    } else if second > first {
        return "<"
    } else {
        return "="
    }
}

print(comprasion(first: 12, second: 6))
print(comprasion(first: 12, second: 13))
print(comprasion(first: 12, second: 12))

//Написать функцию, которая вычисляет сопротивление цепи, состоящей из двух резисторов. Параметрами функции являются величины сопротивлений и тип соединения (последовательное или параллельное). Функция должна проверять корректность параметров: если неверно указан тип соединения, то функция должна возвращать -1.

func resistense(r1: Double, r2: Double, type: String) -> Double {
    var R: Double?
    if type == "Параллельное" {
        R = (r1 * r2) / (r1 + r2)
    } else if type == "Последовательное" {
        R = r1 + r2
    } else {
        print("Введен не корректный тип")
        return -1
    }
    
    return R!
}

// Написать функцию Procent, которая возвращает процент от полученного в качестве аргумента числа.

print(resistense(r1: 14, r2: 12, type: "Параллельное"))
print(resistense(r1: 20, r2: 11, type: "Последовательное"))
print(resistense(r1: 11, r2: 25, type: "Поочередное"))

func procent(procent: Int, dig: Double) {
    print(dig / 100 * Double(procent))
}

procent(procent: 12, dig: 100)

// Написать функцию Dohod, которая вычисляет доход по вкладу. Исходными данными для функции являются: величина вклада, процентная ставка (годовых) и срок вклада (количество дней).

func dohod(deposit: Double, percent: Double, days: Int) {
    let perDay = percent / 365
    var myMoney = deposit
    
    for _ in 1...days {
        myMoney += myMoney / 100 * perDay
    }
    
    print("За \(days) дней сумма вклада составит \(Double(round(1000 * myMoney) / 1000)) рублей")
}


dohod(deposit: 1000, percent: 10, days: 365)

//Написать функцию, которая выводит на экран строку, состоящую из звездочек. Длина строки (количество звездочек) является параметром функции.

func starsString(quantityStars x: Int) {
    var myStars = ""
    for _ in 1...x {
        myStars += "*"
    }
    print(myStars)
}

starsString(quantityStars: 12)


//Написать функцию, которая вычисляет объем и площадь поверхности параллелепипеда.

func parallelepiped(a: Double, b: Double, c: Double) {
    print("Площадь = \(2 * (a * b + a * c + c * b))")
    print("Объем = \(a * b * c)")
}

parallelepiped(a: 12, b: 12, c: 12)
