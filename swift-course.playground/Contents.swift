import UIKit

var greeting = "Hello, playground"
var username = "CS"

// Variables
// Char - un solo caracter
var symbol: Character = "e"
symbol = "\u{2665}"

// String
var petName: String = "Memo"

// Int - Para números enteros
var year: Int = 2026

// Float - Para decimales hasta 38 pero redondea
var decimals: Float = 3.1415211323242123

// Double - Para decimales mas grandes
var biggerDecimals: Double = 3.1415211323242123

// Boolean = Bool
var checkingStatus: Bool = true

// Operadores aritmeticos
var a = 120
var b = 20

var sum = a + b
var subtract = a - b
var multiply = a * b
var diivide = a / b
var module = a % b // el resto de la división

// Operadores de asignacion
var ex = 5
ex = ex + b
ex += b // igual que arriba la operación
ex -= 2
ex *= 5
ex /= 3
ex %= a // modulo

// Operadores lógicos y de comparación
let myAge = 28
let isOlder = myAge > 18 // true o false
let isEqual = myAge == 28
let isNotEqual = myAge != 28
let isOlderOrEqual = myAge >= 18

let isSunny = true
let temperature = 25
let isGoodDay = isSunny && temperature > 25 // And
let checkToWalk = isSunny || temperature > 15 // Or

// Conversiones
let intNumber: Int = 34
let decimalNumber: Double = 23.21
let resultDouble  = Double(intNumber) + decimalNumber
let resultInt = intNumber + Int(decimalNumber)

// Ejercicio 1
let assistants: Double = 10
let totalClasses: Double = 20
let percentage = (assistants / totalClasses) * 100
print("El resultadp es \(percentage)")

// Ejercicio 2
let weight: Double = 60
let height: Double = 1.70
let imc = weight / (height * height)
print("El IMC es \(imc)")

// Funciones
func showCustomName(name: String) {
    print("Hola \(name)")
}
showCustomName(name: "Memo")

func calculate(a: Int, b: Int) {
    let result = a + b
    print("El resultado es \(result)")
}
calculate(a: 2, b: 5)

func calculate2(_ a: Int, _ b: Int) {
    let result = a + b
    print("El resultado es \(result)")
}
calculate2(10, 20)

func calculate3(a: Int, b: Int) -> Int {
    let result = a + b
    return result
}

let resultOfCalculate3 = calculate3(a: 5, b: 10)
print(resultOfCalculate3)


// Condicionales If - Else
let userAge = 21
if userAge >= 18 {
    print("Eres mayor de edad")
} else {
    print("Eres menor de edad")
}

func greeting(_ hour: Int) {
    if hour < 12 {
        print("Buenos dias")
    } else if hour < 18 {
        print("Buenas tardes")
    } else {
        print("Buenas noches")
    }
}
greeting(19)

// Switch
func getMonth(_ month: Int) {
    switch month {
        case 1: print("Enero")
        case 2: print("Febero")
        case 3: print("Marzo")
        case 4: print("Abril")
        case 5: print("Mayo")
        case 6: print("Junio")
        case 7: print("Julio")
        case 8: print("Agosto")
        case 9: print("Septiembre")
        case 10: print("Octubre")
        case 11: print("Noviembre")
        case 12: print("Diciembre")
        default: print("Introduce un número de 1 a 12")
    }
}
getMonth(3)

func getTrimester(_ month: Int) {
    switch month {
        case 1, 2, 3: print("Primer trimestre")
        case 4, 5, 6: print("Segundo trimestre")
        case 7, 8, 9: print("Tercer trimestre")
        case 10, 11, 12: print("Cuarto trimestre")
        default: print("Introduce un número de 1 a 12")
    }
}
getTrimester(4)

func getSemester(_ month: Int) {
    switch month {
        case 1...6: print("Primer semestre")
        case 7...12: print("Segundo semestre")
        default: print("Introduce un número de 1 a 12")
    }
}
getSemester(8)

// Ejercicios
func getCircleArea(radius: Double) -> Double {
    return (Double.pi * radius * radius)
}
let areaResult = getCircleArea(radius: 10)
print("El area del circulo es \(areaResult)")


// Arrays
var names: [String] = ["Memo", "Trump", "Pepe"]
print(names)
names[2] = "loquesea"
print(names)

names.remove(at: 2)
print(names)

names.append("Memino") // Agregar
print(names)


// Bucles
var daysOfWeek: [String] = ["Lun", "Mar", "Mier", "Jue", "Vie", "Sab", "Dom"]

// Bucle for se usa cuando sabemos la cantidad de veces que queremos iterar
for day in daysOfWeek {
    if day == "Jue" {
        print("Hola: \(day)")
    }
}

// Se usa cuando necesito esperar a que una condicion sea verdadera
var count = 0
while count < 6 {
    print("Valgo \(count)")
    count += 1
}

// Este se usa cuando necesito que se use al menos una vez
var count2 = 5
repeat {
    print("Memo")
} while count2 < 0

for day in daysOfWeek {
    if day == "Jue" {
        print("Es jueves")
        break
    } else {
        print("No es jueves")
    }
}


for day in daysOfWeek {
    print("---------")
    if day == "Jue" {
        print("Es jueves")
        continue
    } else {
        print("No es jueves")
    }
    print("XXXXXXXXXX")
}

// Ejercicio
func countVocal(_ text: String) {
    var totalOfVocal = 0
    for character in text {
        switch character.lowercased() {
        case "a", "e", "i", "o", "u":
            totalOfVocal += 1
        default:
            continue
        }
    }
    print("El numero de vocales para \(text) es \(totalOfVocal)")
}
countVocal("Memino Trump")


// Tuplas -> Variable similar a un array que acepta cualquier valor
var tupla = ("Camilo", 28, true, 3200001234, "Bucaramanga")
print(tupla.4)


// Diccionarios -> Variable con clave y valor
var dicc: [String: Any] = ["name": "Camilo", "age": 28, "city": "Bga"]
var myDiccName = dicc["name"] as? String ?? "Cami"
print(myDiccName)

for (key, value) in dicc {
    print("La clave \(key) contiene \(value)")
}
