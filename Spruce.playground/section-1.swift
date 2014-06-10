// Playground - noun: a place where people can play

import Cocoa

// messing around
var str = "Hello, playground"
let okay = "playgrounds are very crashy"

({
    str = "sup? (ノ｀ー´)ノ・・・~~┻━┻ "
})()


/* 
  beginning of Spruce
*/
func runSpecs() {
    for spec in describeBlocks {
        spec.it()

        var count = 0
        for child in spec.children {
            count++
            child()
        }

        var msg = ""
        if count == 0 {
            msg = "sadface"
        }
        msg
    }
}

// probably not necessary, had problems with describe declaration otherwise
typealias Block = () -> ()

struct DescBlock {
    var it: Block!
    var children: Block[] = []
}

var describeBlocks: DescBlock[] = []
var currentDescribe: DescBlock?

func describe(block: Block) {
    var emptyChildren: Block[] = []
    var newDesc = DescBlock(
        it: block,
        children: emptyChildren
    )
    describeBlocks.append(newDesc)
    currentDescribe = newDesc
}

func it(block: () -> ()) {
    block()
}

/*
  example usage
*/

// mySpec.swift
describe(({
    it(({
        str = "OH YEAH"
    }))
}))

// main.swift
runSpecs()
str // OH YEAH
