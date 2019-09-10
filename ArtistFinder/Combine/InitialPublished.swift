//
//  InitialPublished.swift
//  ArtistFinder
//
//  Created by Abdiel Soto Barrera  (Vendor) on 9/9/19.
//  Copyright © 2019 iOSDevsMx. All rights reserved.
//

import UIKit
import Combine

@propertyWrapper // @propertyDelegate
struct InitialPublished<Value>: Publisher {
    typealias Output = Value
    typealias Failure = Never
    
    private let subject: CurrentValueSubject<Output, Failure>
    
    var wrappedValue: Value {
        get {
            subject.value
        }
        set {
            subject.send(newValue)
        }
    }
    
    init(wrappedValue initialValue: Value) {
        subject = CurrentValueSubject(initialValue)
    }
    
    func receive<S>(subscriber: S) where S : Subscriber, Failure == S.Failure, Value == S.Input {
        subject.receive(subscriber: subscriber)
    }
}
