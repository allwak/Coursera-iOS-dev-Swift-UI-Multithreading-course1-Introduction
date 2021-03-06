import UIKit

//MARK: - First Function
/***************************************************************/

func firstFunction(array: [Int]) -> (Int, Int) {
    var odd = 0
    var even = 0
    for number in array {
        if number % 2 == 0 {
            even += 1
        } else {
            odd += 1
        }
    }
    return (even, odd)
}

firstFunction(array: [1,2,3,4,5,6])


//MARK: - Second Function
/***************************************************************/

/// Перечисление, представляющее один из пяти цветов
public enum Color {

    case white

    case black

    case red

    case green

    case blue

}

   /// Структура, описывающая окружность
public struct Circle {

    public var radius: Double

    public var color: Color

    public init(radius: Double, color: Color) {
        self.radius = radius
        self.color = color
    }
}

let circle1 = Circle(radius: 2, color: .white)
let circle2 = Circle(radius: 3, color: .white)
let circle3 = Circle(radius: 4, color: .black)
let circle4 = Circle(radius: 5, color: .black)
let circle5 = Circle(radius: 3, color: .red)
let circle6 = Circle(radius: 3, color: .red)
let circle7 = Circle(radius: 8, color: .green)
let circle8 = Circle(radius: 7, color: .blue)
let circle9 = Circle(radius: 9, color: .white)

var listOfCircles = [circle1, circle2, circle3, circle4, circle5, circle6, circle7, circle8, circle9]

///
/// Передайте в этот метод функцию, преобразующую массив окружностей по следующему алгоритму:
/// белые окружности должны быть первыми
/// радиус черных должен быть увеличен в 2 раза
/// красные нужно убрать из результата
/// зеленые перекрасить в синие
/// затем разместить синие в конце массива
/// Если не указано иное, то порядок окружностей должен сохраняться.
/// Если ваше решение окажется правильным то в консоли вы увидите еще одну часть кодового слова.
///


func secondFunction(arrayOfCirles: [Circle]) -> [Circle] {
    
    var whiteCirles : [Circle] = []
    var blackCirles : [Circle] = []
    var redCirles : [Circle] = []
    var blueCirles: [Circle] = []
    
    for circle in arrayOfCirles {
        switch circle.color {
        case .white:
            whiteCirles.append(circle)
        case .black:
            let blackCircleRadius = circle.radius * 2
            var newCircle = circle
            newCircle.radius = blackCircleRadius
            blackCirles.append(newCircle)
        case .red:
            redCirles.append(circle)
        case .green:
            let blueCircleColor = Color.blue
            var newCircle = circle
            newCircle.color = blueCircleColor
            blueCirles.append(newCircle) // according to the task
        case .blue:
            blueCirles.append(circle)
        }
    }
    
    var newArrayOfCircles: [Circle] = []
    
    newArrayOfCircles += whiteCirles
    newArrayOfCircles += blackCirles
    newArrayOfCircles += blueCirles
    
    return newArrayOfCircles
    
    
}

var newListOfCircles = secondFunction(arrayOfCirles: listOfCircles)

print(newListOfCircles.count)


//MARK: - Third Function
/***************************************************************/

public struct Employee {

    public let fullName: String

    public let salary: String

    public let company: String

    public init(fullName: String, salary: String, company: String) {
        self.fullName = fullName
        self.salary = salary
        self.company = company
    }
}

/// Словарь в котором хранятся данные о сотруднике в виде:
///
///    {
///       "fullName": String,
///       "salary": String,
///       "company": String
///    }
var EmployeeData: [String : String]


/// Передайте в этот метод функцию которая преобразует массив словарей в структуры Employee.
/// Порядок сотрудников должен остаться тем же. При этом если формат данных не совпадает с
/// указанным выше, то такой словарь должен отбрасываться. Если ваше решение окажется правильным
/// то в консоли вы увидите еще одну часть кодового слова.
///

func thirdFunction(employeeData: [[String : String]]) -> [Employee]{
    var newEmployeeList: [Employee] = []

    for item in employeeData {
        var fullname = ""
        var salary = ""
        var company = ""
        
        print(item)
      
        for (key, value) in item {
            print(key)
            switch key {
            case "fullName":
                fullname = value
            case "salary":
                salary = value
            default:
                company = value
            }

        }
        
        print("salary is empty : ", salary.isEmpty)
        
        if !(fullname.isEmpty) &&  !(salary.isEmpty) && !(company.isEmpty) && (Int(company) == nil) {
            let employee = Employee(fullName: fullname, salary: salary, company: company)
            newEmployeeList.append(employee)
        }
        
    }

    return newEmployeeList
}

var employee1 = ["fullName": "Dorothy M. Lapointe", "salary": "10000", "company": "Copeland Sports"]
var employee2 = ["fullName": "Roger A. Campuzano", "salry": "9000", "company": "Vibrant Man"]
var employee3 = ["fullName": "Eileen J. Hansen", "salary": "5000"]
var employee4 = ["salary": "12500", "company": "Silo", "fullName": "Michael K. Weise"]
var employee5 = ["company": "Levitz Furniture", "fullName": "Donald M. Rodriguez", "salary": "10000"]
var employee6 = ["age": "53", "fullName": "Mary R. McDonald", "company": "Rivera Property Maintenance", "salary": "9500"]
var employee7 = ["fullName": "Joseph C. O\'Connor", "salary": "10500", "company": "Garden Master"]
var listDibilov = [employee1, employee2, employee3, employee4, employee5, employee6, employee7]


thirdFunction(employeeData: listDibilov)

var check = (Int("53") != nil)
print(check)
