import UIKit

///字符串
var str = "Hello, playground"
var str1 = "Hello, playground"
let str2 = "apples"
let str22 = "apples"

let num = 3.0
let str3 = "I have \(num) \(str2)"

let num2 = 4.0
let str4 = "result = \(num / num2)"
let str5 = str2 + " \(num + num2) " + str4
let str6 = "sdfadssdfasdfasdf"

str1 += " " + str5
let str7 = (str == str1) ? "相等" : "不相等"
print(str != str1)
let name = "Source Control"
let firstSpace = name.firstIndex(of: "C") ?? name.endIndex
print(firstSpace)
let firstname = name[..<firstSpace]
name.count
print(Array(name))

print(name.unicodeScalars)
let str8 = "Cafe\u{302}"
print(str8.unicodeScalars.count)
print(Array(str8.unicodeScalars))
print(str8.unicodeScalars.map { $0.value } )
print(Array(str8.utf16))
let str9 = str8 as NSString
print(str9.length)
let str10 = str8 as String
///字符串拼接
print(str9.substring(to: 3))
var str11 = "string eleven"
str11.append(str10)
str11.write(str8)
///字符串替换
str11.replacingOccurrences(of: "eleven", with: "lalalala")
let str12 = "string eleven"
var str13 = "string eleven"
str11.elementsEqual(str13)
str13.hasPrefix("ele")
str12.hasPrefix("string eleven")
str13.hasSuffix("string")
str12.contains("ele")

let cha:Character = "a"
var n = 1

///数组
let arr = [1,2,3,4,5]
for i in arr {
    print("i = \(i)")
}

///字典
let dict = ["name":"jack","age":"12"]
let name1 = dict["name"]
let age1 = Int(dict["age"]!)

///元组
let http404Error = (404,"找不到网页")
print(http404Error.0,http404Error.1)
let http502Error = (502,"错误的网关")
let arr1 = [http404Error,http502Error];
for i in arr1 {
    print("i = \(i.1)")
}

let (httpCode,httpErrorString) = (404,"找不到网页")
print(httpCode,httpErrorString)
let (httpCode1,_) = (500,"找不到网页")
print(httpCode1)
// 通过元组内部参数进行访问
let httpStatus = (httpCode:123,httpErrorString:"内部错误")
print(httpStatus.httpCode,httpStatus.httpErrorString)

///if - else
var m = 30
if m == 30 {
    print("my age is \(m)")
}

///while
var j = 0
while j<5 {
    print("j = \(j)")
    j += 1
}

j = 0
repeat {
    print("j = \(j)")
    j -= 1
}while j==0

let closeRange = 0...3
for i in closeRange {
    print("i = \(i)")
}

/*
 区间运算

 闭区间运算符:a...b ,表示 a<= 取值 <=b
 半开区间运算符:a..<b， a <= 取值 < b
 单侧区间:让区间朝一个方向尽可能的远 a..., a 到无限大
 */

///方式一: 默认num是let 类型,可以省略不写
let range2 = 0..<5
for i in range2 {
    print("i = \(i)")
}

///方式二: 如果要修改 num 的值,需要更改为变量
for var k in range2 {
    k += 2
    print(k)
}

///方式三: 去过不需要用到 num 可以使用_缺省
for _ in range2 {
    print("Hello world")
}

let arr2 = ["my","name","is","alex"]
for string in arr2 {
    print(string)
}

// 设置数组的取值范围
for string in arr2[2..<3] {
    print(string)
}
///单侧区间运算符
for string in arr2[1...] {
    print(string)
}

///带间隔的区间值, 使用 stride来进行间隔设置
// num 的取值:从50开始，累加4，不超过100
let number = 40
for num in stride(from: 50, to: 100, by: number) {
    print(num)
}

for num in stride(from: 0, to: 5, by: 1) {
    print(num)
}

for num in stride(from: 0, through: 5, by: 1) {
    print(num)
}

///枚举
enum Answer {
    case right,
    wrong
}

let result = Answer.wrong
switch result {
case .right:
    print("right")
default:
    print("wrong")
}

///复合条件
///使用, 分割,可以同时判断多个条件,满足一个即执行
let name3 = "jack"//"lalala"
switch name3 {
case "lalala","jack":
    print("my name is \(name3)")
default:
    print(name3)
}

///区间匹配
let l = 0.1
switch l {
case 0...50:
    print("0-50区间 \(l)")
case 51...100:
    print("51-100区间 \(l)")
case 101...150:
    print("101-150区间 \(l)")
case 151...200:
    print("151-200区间 \(l)")
default:
    print("其他区间 \(l)")
}

///元组匹配
let point = (-4.11,0)
switch point {
case (0,0):
    print("原点")
case (_,0):
    print("在x轴上")
case (0,_):
    print("在y轴上")
case (-4...4,-4...4):
    print("在范围内")
default:
    print("其他点")
}

///值绑定,如果有一个值相同,另外一个则会进行绑定
let point1 = (0, 0)
switch point1 {
case (let x, 0):
    print("the origin is\(x)")
case (0, let y):
    print("the origin \(y)")
default:
    print("outside of the box")
}

///where用于判断某个条件满足才会进行执行
for num in 1..<100 where num % 20 == 0{
    print(num)
}

///Swift 函数
///1. 定义和调用函数
///func的为函数关键字前缀, ->表示 函数返回的类型
///2. 隐式返回
///如果整个函数体是一个单一表达式，那么函数会隐式返回这个表达式
func test(some:String) -> String {
//    let result = "test " + some
//    return result
    "test " + some
}
print(test(some: "hahaha"))

///可以使用下划线_ 省略参数标签
func add(_ v1:Int,_ v2:Int) -> Int {
//    return v1+v2
    v1+v2
}
//print(add(v1: 10, v2: 20))
print(add(10, 20))

///3. 返回元组:实现多返回值
func calculate(v1:Int,v2:Int) ->(addResult:Int,subResult:Int,aveResult:Double) {
    let add = v1 + v2
    let sub = v1 - v2
    let ave:Double = Double(add) / 2
    return(add,sub,ave)
}
let results = calculate(v1: 100, v2: 20);
print(results.addResult,results.subResult,results.aveResult)

///4. 参数标签
///可以修改参数标签,方便阅读
func test3( at str:String,str2:String) -> String {
    return "hello " + str + " " + str2
}

test3(at: "jack", str2: "Tony")

///可以使用下划线_ 省略参数标签
func test4(_ str:String,_ str2:String) -> String {
    return "hello " + str + " " + str2
}

test4("hello", "hello")

///5. 默认参数值
///参数可以有默认值
func test5(_ name:String = "Anne",age:Int = 18) -> String {
    "my name is \(name), my age is \(age)"
}
test5()
test5("monkey", age: 20)
test5("banane")

///6. 可变参数
///一个参数可以传入多个值
func test6(_ numbers:Int...) -> Int {
    var result = 0
    for num in numbers {
        result += num
    }
    return result
}

test6(10,20,30,40,50,60)

func test7(_ strings:String...) -> String {
    var result = "";
    for str in strings {
        result.append(" \(str)")
    }
    return result
}
test7("apple","fly","sky")

///一个函数最多只能有1个可变参数,紧跟在可变参数后面的参数不能省略参数标签
// 参数string不能省略标签
func test8(_ numbers:Int..., string:String,_ str2:String) -> String {
    var result = 0
    for num in numbers {
        result += num
    }
    return "\(result) " + string + " " + str2
}

test8(10,12,13,14, string: "hahaha", "gungungun")

/*
 7. 输入输出参数(In-Out Parameter)
 可以用inout定义一个输入输出参数:可以在函数内部修改外部实参的值

 可变参数不能标记为inout
 inout参数不能有默认值
 inout参数的本质是地址传递(引用传递) n inout参数只能传入可以被多次赋值的
 */
func test9(v1: inout Int,v2: inout Int) {
    let temp = v1
    v1 = v2
    v2 = temp
}

var num1 = 100
var num3 = 200
test9(v1: &num1, v2: &num3)
print(num1,num3)

/*
 8. 函数重载(Function Overload)
 函数名相同, 参数个数不同 || 参数类型不同 || 参数标签不同
 返回值类型与函数重载无关
 */

func sum(v1:Int,v2:Int) -> Int {
    v1 + v2
}
sum(v1: 10, v2: 12)

func sum(v1:Int,v2:Int,v3:Int) -> Int {
    v1 + v2 + v3
}
sum(v1: 12, v2: 14, v3: 16)

func sum(v1:Double,v2:Double) -> Double {
    v1 + v2
}
sum(v1: 12.2, v2: 14.2)

func sum(_ v1:Int,_ v2:Int) -> Int {
    v1 + v2
}
sum(4,5)

///10. 函数类型(Function Type)
///每一个函数都是有类型的，函数类型由形式参数类型、返回值类型组成
// 定义变量
var fn:(Int,Int) -> Int = add
fn(2,3)

///函数类型作为函数参数
func difference(a:Int,b:Int) -> Int {
    a - b
}

///函数类型作为函数参数
func printResult(_ mathFn:(Int,Int) -> Int,_ a:Int,_ b:Int) {
    print(mathFn(a,b))
}
printResult(add, 100, 200)
printResult(difference, 24, 17)

///函数类型作为函数返回值
func next(_ num:Double) -> Double {
    num + 1.2
}

func previous(_ num:Double) -> Double {
    num - 1.2
}

next(3)
previous(3)

func forward(_ forward:Bool) -> ((Double) -> Double) {
    forward ? next : previous
}

forward(true)(3)

///11. typealias
///按照Swift标准库的定义，Void就是空元组()
///typealias用来给类型起别名
typealias byte = Int8
typealias short = Int16
typealias long = Int64

typealias IntFn = (Int,Int) -> Int

let fn1:IntFn = difference
let fn2:IntFn = add
fn1(2,3)
fn2(3,6)

///12嵌套函数(Nested Function)
///将函数定义在函数内部
func check(_ result:Bool) -> ((Int) -> Int) {
    func next1(_ a:Int) -> Int {
        a + 10
    }
    func previous1(_ b:Int) -> Int {
        b - 10
    }
    return result ? next1 : previous1
}

check(true)(100)
check(false)(120)

///Swift 闭包
///在Swift中，可以通过func定义一个函数，也可以通过闭包表达式定义一个函数
///闭包表达式
//{
//    (参数列表) -> 返回值类型 in 函数体代码
//}
///闭包表达式的简写
///定义函数,并引入闭包表达式
func exec( a:Int,  b:Int,fn2:(Int,Int) -> Int) {
    print(fn2(a,b))
}

// 正常写法
exec(a:4,b:5,fn2: {
    (v1:Int,v2:Int) -> Int in
    return v1 + v2
})

exec(a:4,b:5,fn2: {
    v1,v2 in return v1 + v2
})

exec(a:4,b:5,fn2: {
    v1,v2 in v1 + v2
})

exec(a:4,b:5,fn2: {
    $0 + $1
})

exec(a:4,b:5,fn2:+)
