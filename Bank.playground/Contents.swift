import UIKit
import Foundation
//bruh

enum TransactionType {
    case BillPayment
    case WireMoney
}

struct Transaction {
    var TransID : Int
    var TransDate : Date
    var TransAmount : Int
    var array1 =  [Transaction]()
    var TransType : TransactionType
    
    mutating func BillPayment(bills : Int){
        if (bills == 0) {
            print("The bill is paid")
        }else {
            print("Please pay the bill")
        }
    }
    
    mutating func WireMoney(s1 : Bank, s2 :Bank, wire:Float){
        // check balance for s1
        
        s1.Balance -= wire
        s2.Balance += wire
        print("Transferd successfully")
        
    }
    
    mutating func TransHistory(t1 : Transaction){
        array1.append(t1)
        print("successfully")
    }
    
    mutating func History() {
        
        for elemnt in array1{
            print(elemnt.TransID)
            print(elemnt.TransDate)
            print(elemnt.TransAmount)
            print(elemnt.TransType)
        }
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


var b2 = Bank(FullName: "gege", Email: "r@r", PhoneNumber: 056666666, UserName: "gege", passwords: "@1fgsy7", bills: 150.0, Balance: 9000.50)
b2.createAccount(bank: b2)
b2.viweAccounts()


var t1 = Transaction(TransID: 999, TransDate: Date(), TransAmount: 300, TransType: TransactionType.BillPayment)
t1.BillPayment(bills: 0)
t1.TransHistory(t1: t1)
t1.History()
t1.WireMoney(s1: b1, s2: b2, wire: 77.7)
b1.GetBalance()
b2.GetBalance()



