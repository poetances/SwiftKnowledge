//
//  PointViewController.swift
//  SwiftStudy
//
//  Created by Zhu ChaoJun on 2021/3/3.
//  Copyright © 2021 Zhu ChaoJun. All rights reserved.
//

import UIKit
import Alamofire
import Moya


struct PoeC {
    var age: Int = 10
    var num: Character = "a"
}

var all = 10

// swift指针有四种
/*

 let point1: UnsafePointer<Int>
 let point2: UnsafeMutablePointer<Int>
 let point3: UnsafeRawPointer
 let point4: UnsafeMutableRawPointer

 UnsafeRawPointer就是获取当前变量的地址。和&T的作用类似。
 当我们声明一个变量的时候，var a = x 那么a其实表示的是当前参数在内存中的值，我们用po打印其实也是这样，可以理解为编译器进行了优化，
 因为如果po打印出来是地址的话，对程序员是很不友好的。那么我们可以通过withUnsafePoint或者UnsafePotter(&a)来获取当前内存的地址。
 比如：let ptr = UnsafePointer(&a)，其中a标识当前变量在内存中的值，ptr标识当前变量的地址。 ptr.load(as: xxx)、ptr.pointee获取的就是当前地址对应的内存的值，其实就是a。


 public enum MemoryLayout<T> {

    // 类型大小
     public static var size: Int { get }

    // 对齐后大小
     public static var stride: Int { get }

    // 对齐
     public static var alignment: Int { get }

     public static func size(ofValue value: T) -> Int

     public static func stride(ofValue value: T) -> Int

     public static func alignment(ofValue value: T) -> Int
 }

malloc_size(ptr)，才是获取真正初始化后分配的大小。


 */
class PointViewController: SSBaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()


//        let point1: UnsafePointer<Int>
//        let point2: UnsafeMutablePointer<Int>
//        let point3: UnsafeRawPointer
//        let point4: UnsafeMutableRawPointer

       


    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
      


//        var age = 10
//
//        var poe = PoeC()
//
//        print(malloc_size(Mems.ptr(ofRef: poe)), MemoryLayout.stride(ofValue: poe), MemoryLayout<PoeC>.size)
//        print(Mems.size(ofRef: poe), Mems.ptr(ofVal: &poe))
//        print(Mems.ptr(ofRef: poe), Mems.ptr(ofVal: &poe))
//        print(Mems.ptr(ofVal: &age))
//
//        var poeType = PoeC.self
//        print(Mems.ptr(ofVal: &poeType), Mems.ptr(ofRef: poeType))
//        print(Mems.ptr(ofVal: &all))
//        print(Mems.memStr(ofRef: poe, alignment: MemAlign.eight))
//
//        let ptr1 = withUnsafePointer(to: &poe) { UnsafeRawPointer($0) }
//        let ptr2 = withUnsafePointer(to: &poe) { $0 }
//        let ptr3 = withUnsafePointer(to: poe) { $0 }
//        let ptr4 = UnsafePointer(&poe)
//        let ptr5 = UnsafeRawPointer(&poe)
//
//        let ptrHeap1 = UnsafeRawPointer(bitPattern: ptr1.load(as: UInt.self))
//        let ptrHeap2 = ptr1.load(as: UInt.self)
//        let ptrHeap3 = ptr4.pointee
//        print(ptr1, ptr2, ptr3, ptrHeap1)

//        _unsafePointer(to: &age)

    }
    
    
    func _unsafePointer<T>(to value: inout T) -> String {

        // 这两种写法是一样的。
        let ptr = withUnsafePointer(to: value) { $0 }


        print(String(format: "%p", value as! CVarArg), ptr)


        return ptr.debugDescription
    }


}


