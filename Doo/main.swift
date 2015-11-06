//
//  main.swift
//  Doo
//
//  Created by Mickey Barboi on 11/1/15.
//  Copyright © 2015 paradrop. All rights reserved.
//

import Foundation
import Riffle

// Replace "damouse" with your own username!
let app = RiffleAgent(domain: "xs.demo.damouse.exagainst")

class ContainerAgent: RiffleAgent {
    override func onJoin() {
        print("Agent joined")
        register("hello", sayHi)
    }
    
    func sayHi(name: String) -> AnyObject {
        print("\(name) says hello!")
        return "Hi, \(name)!"
    }
}

let container = ContainerAgent(name: "container", superdomain: app)
container.join()

NSRunLoop.currentRunLoop().run()