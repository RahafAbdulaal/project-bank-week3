import UIKit

class Bank {
    var bankAccount = [Bank]()
    var FullName : String
    var Email : String
    var PohneNumber : Int
    var UserName : String
    var passwords : String
    var bills :Float
    var Balance : Float
    
    
    init(FullName : String , Email : String , PhoneNumber : Int , UserName : String , passwords : String , bills : Float, Balance : Float){
        self.FullName = FullName
        self.Email = Email
        self.PohneNumber = PhoneNumber
        self.UserName = UserName
        self.passwords = passwords
        self.bills = bills
        self.Balance = Balance
    
    }
    
    func createAccount(bank : Bank){
        bankAccount.append(bank)
        print("Account created successfully")
    }
    
    func viweAccounts(){
        
        for elemnt in bankAccount{
            print(elemnt.FullName)
            print(elemnt.UserName)
            print(elemnt.Email)
            print(elemnt.PohneNumber)
            print(elemnt.bills)
            print(elemnt.Balance)
        }
    }
    func GetBalance (){
        for elemnt in bankAccount{
            print(elemnt.Balance)
        }
    }
    
    func BillsPayments (){
        if self.bills == 0 {
            print("The bill is paid")
                  }else {
            print("Please pay the bill")
            }
    }
    func WireMoney(s1 : Bank, s2 :Bank, wire:Float){
        s1.Balance-=wire
        s2.Balance+=wire
        print("")
    }
}
var b1 = Bank(FullName: "Rahaf Abdulaal", Email: "miss-rofa@live.com", PhoneNumber: 0566700107, UserName: "@RahafAbdulaal", passwords: "R%$67ahaf", bills: 156.50 , Balance: 900.75)
b1.createAccount(bank: b1)
b1.viweAccounts()
b1.BillsPayments()
b1.viweAccounts()



var b2 = Bank(FullName: "Gehan Ahmad", Email: "Gege@live.com", PhoneNumber: 0544667971, UserName: "@Gehan", passwords: "G%$67GeGe", bills: 0 , Balance: 10000)
b2.createAccount(bank: b2)
b2.viweAccounts()
b2.BillsPayments()

b1.WireMoney(s1: b1, s2: b2, wire: 50.0)
b1.GetBalance()
b2.GetBalance()

