import UIKit
import Foundation

enum TransactionType {
    case BillPayment
    case WireMoney
}
struct Transaction {
    var TransID : Int
    var TransDate : Date
    var TransAmount : Int
    var TransType : TransactionType

mutating func BillPayment(bills : Int){
    if (bills == 0) {
        print("The bill is paid")
              }else {
        print("Please pay the bill")
        }
}
    mutating func WireMoney(s1 : Bank, s2 :Bank, wire:Float){
        s1.Balance-=wire
        s2.Balance+=wire
        print("")
    }
}
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
    
}
var b1 = Bank(FullName: "rahaf", Email: "r@r", PhoneNumber: 056666666, UserName: "rahafabdulaal", passwords: "@1fgsy7", bills: 150.0, Balance: 9000.50)
b1.createAccount(bank: b1)
b1.viweAccounts()


