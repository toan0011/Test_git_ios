//
//  main.swift
//  Bai3
//
//  Created by Minh Toan on 05/10/2023.
//

import Foundation

func chooseCompany() -> Int{
    print("""
        ==================================
        Các hãng xe:
        1. Mai Linh
        2. Vinasun
        3. Vinataxi
        4. Group
        5. G7
        6. Sao Mai
        7. GSM
        Chọn:
        """)
    if let input = readLine(), let num = Int(input), num >= 1 && num <= 7{
        return num
    }else{
        return -1
    }
}

func enterDistance() -> Double{
    print("==================================")
    print("Nhập quãng đường:")
    if let input = readLine(), let distance = Double(input), distance > 0{
        return distance
    }else{
        return -1
    }
}

func caculateMaiLinh(distance:Double){
    print("""
        ==================================
        Mai Linh
        Loại dịch vụ:
        1. 4 chỗ nhỏ
        2. 4 chỗ lớn
        3. 7 chỗ
        Chọn:
        """)
    let open:Double = 20000
    var next:Double = 0
    var adjust:Double = 0
    if let input = readLine(), let choose = Int(input){
        switch choose {
        case 1:
            if distance > 1.28 && distance < 31{
                next = 14500 * (distance - 1.28)
            }
            if distance >= 31 {
                next = 14500 * (30 - 1.28)
                adjust = 12000 * (distance - 30)
            }
        case 2:
            if distance > 1.28 && distance < 31{
                next = 16000 * (distance - 1.28)
            }
            if distance >= 31 {
                next = 16000 * (30 - 1.28)
                adjust = 12700 * (distance - 30)
            }
        case 3:
            if distance > 1.28 && distance < 31{
                next = 17000 * (distance - 1.28)
            }
            if distance >= 31 {
                next = 17000 * (30 - 1.28)
                adjust = 14300 * (distance - 30)
            }
        default:
            print("Giá trị không hợp lệ")
            return
        }
        print("Giá tiền là: \(open + next + adjust)")
    }
}

func caculateVinasun(distance:Double) {
    print("""
         ==================================
         Vinasun
         Loại dịch vụ:
         1. 4 chỗ
         2. 7 chỗ
         Chọn:
         """)
    var open:Double = 0
    var next:Double = 0
    var adjust:Double = 0
    if let input = readLine(), let choose = Int(input){
        switch choose {
        case 1:
            open = 11000
            if distance > 0.5 && distance < 31{
                next = 17600 * (distance - 0.5)
            }
            if distance >= 31 {
                next = 17600 * (30 - 0.5)
                adjust = 14500 * (distance - 30)
            }
        case 2:
            open = 12000
            if distance > 0.5 && distance < 31{
                next = 19600 * (distance - 0.5)
            }
            if distance >= 31 {
                next = 19600 * (30 - 0.5)
                adjust = 17100 * (distance - 30)
            }
        default:
            print("Giá trị không hợp lệ")
            return
        }
        print("Giá tiền là: \(open + next + adjust)")
    }
}

func caculateVinataxi(distance:Double) {
    print("""
         ==================================
         Vinataxi
         Loại dịch vụ:
         1. 4 chỗ
         2. 7 chỗ
         Chọn:
         """)
    var open:Double = 0
    var next:Double = 0
    var adjust:Double = 0
    if let input = readLine(), let choose = Int(input){
        switch choose {
        case 1:
            open = 11000
            if distance > 0.5 && distance < 31{
                next = 17100 * (distance - 0.5)
            }
            if distance >= 31 {
                next = 17100 * (30 - 0.5)
                adjust = 13600 * (distance - 30)
            }
        case 2:
            open = 12000
            if distance > 0.5 && distance < 31{
                next = 19100 * (distance - 0.5)
            }
            if distance >= 31 {
                next = 19100 * (30 - 0.5)
                adjust = 15100 * (distance - 30)
            }
        default:
            print("Giá trị không hợp lệ")
            return
        }
        print("Giá tiền là: \(open + next + adjust)")
    }
}

func caculateGroup(distance:Double){
    print("""
        ==================================
        Group
        Loại dịch vụ:
        1. Xe Vios
        2. Xe Inova
        3. Xe Eco
        Chọn:
        """)
    let open:Double = 20000
    var next:Double = 0
    var adjust:Double = 0
    if let input = readLine(), let choose = Int(input){
        switch choose {
        case 1:
            if distance > 0.9 && distance < 26{
                next = 17600 * (distance - 0.9)
            }
            if distance >= 26 {
                next = 17600 * (26 - 0.9)
                adjust = 14400 * (distance - 25)
            }
        case 2:
            if distance > 0.9 && distance < 26{
                next = 19600 * (distance - 0.9)
            }
            if distance >= 26 {
                next = 19600 * (26 - 0.9)
                adjust = 16200 * (distance - 25)
            }
        case 3:
            if distance > 1.5 && distance < 26{
                next = 14300 * (distance - 1.5)
            }
            if distance >= 26 {
                next = 14300 * (26 - 1.5)
                adjust = 12300 * (distance - 25)
            }
        default:
            print("Giá trị không hợp lệ")
            return
        }
        print("Giá tiền là: \(open + next + adjust)")
    }
}

func caculateG7(distance:Double){
    print("""
        ==================================
        G7
        Loại dịch vụ:
        1. 4 chỗ nhỏ
        2. 4 chỗ lớn
        3. 7 chỗ
        Chọn:
        """)
    let open:Double = 20000
    var next:Double = 0
    if let input = readLine(), let choose = Int(input){
        switch choose {
        case 1:
            if distance > 1.379{
                next = 12000 * (distance - 1.379)
            }
        case 2:
            if distance > 1.25{
                next = 13000 * (distance - 1.25)
            }
        case 3:
            if distance > 1.143{
                next = 14500 * (distance - 1.143)
            }
        default:
            print("Giá trị không hợp lệ")
            return
        }
        print("Giá tiền là: \(open + next)")
    }
}

func caculateSaoMai(distance:Double){
    print("""
        ==================================
        Sao Mai
        Loại dịch vụ:
        1. 4 chỗ nhỏ
        2. 4 chỗ lớn
        Chọn:
        """)
    let open:Double = 20000
    var next:Double = 0
    var adjust:Double = 0
    if let input = readLine(), let choose = Int(input){
        switch choose {
        case 1:
            if distance > 1.5 && distance < 21{
                next = 13500 * (distance - 1.5)
            }
            if distance >= 21 {
                next = 13500 * (21 - 1.5)
                adjust = 11500 * (distance - 20)
            }
        case 2:
            if distance > 1.4 && distance < 21{
                next = 14500 * (distance - 1.4)
            }
            if distance >= 21 {
                next = 14500 * (21 - 1.4)
                adjust = 12500 * (distance - 20)
            }
        default:
            print("Giá trị không hợp lệ")
            return
        }
        print("Giá tiền là: \(open + next + adjust)")
    }
}

func caculateGSM(distance:Double) {
    let open:Double = 20000
    var next:Double = 0
    var adjust:Double = 0
    if distance > 1 && distance < 26{
        next = 15500 * (distance - 1)
    }
    if distance >= 26 {
        next = 15500 * (26 - 1)
        adjust = 12500 * (distance - 25)
    }
    print("Giá tiền là: \(open + next + adjust)")
}

func main(){
    while true {
        print("""
            ==================================
            Nhập:
            1. Tiếp tục
            0. Thoát
            Chọn:
            """)
        if let input = readLine(), let choose = Int(input){
            if choose == 0 {
                return
            }
            if choose != 1 {
                print("Giá trị không hợp lệ")
                continue
            }
        }
        let distance = enterDistance()
        if distance == -1 {
            print("Giá trị không hợp lệ.")
        }
        switch chooseCompany(){
        case 1:
            caculateMaiLinh(distance: distance)
        case 2:
            caculateVinasun(distance: distance)
        case 3:
            caculateVinataxi(distance: distance)
        case 4:
            caculateGroup(distance: distance)
        case 5:
            caculateG7(distance: distance)
        case 6:
            caculateSaoMai(distance: distance)
        case 7:
            caculateGSM(distance: distance)
        default:
            print("Giá trị không hợp lệ")
        }
    }
}

main()

