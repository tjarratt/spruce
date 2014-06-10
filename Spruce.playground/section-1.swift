// Playground - noun: a place where people can play

import Cocoa

// messing around
var str = "Hello, playground"
let okay = "playgrounds are very crashy"

({
    str = "sup? (ノ｀ー´)ノ・・・~~┻━┻ "
})()


// beginning of Spruce
func runSpecs() {
    for spec in describeBlocks {
        spec()
    }
}

typealias blocky () -> ()
var describeBlocks blocky[] = []
func describe(block: () -> ()) {
    describeBlocks.append(block)
}

func it(block: () -> ()) {
    block()
}

it(({
    let whatever = str
    println(whatever)
}))


describe(({
    it(({
        str = "oh noes"
    }))
}))

if str == "oh noes" {
    str = "success?"
}

println(str)