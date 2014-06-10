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
        spec()
    }
}

typealias Block = () -> ()
var describeBlocks: Block[] = []
func describe(block: Block) {
    describeBlocks.append(block)
}

func it(block: () -> ()) {
    block()
}

/*
  example usage
*/
describe(({
    it(({
        str = "OH YEAH"
    }))
}))

if str == "OH YEAH" {
    str = "success?"
} else {
    str = "failure!!!"
}

println(str)
