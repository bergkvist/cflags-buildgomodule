package main

import (
	"fmt"

	blst "github.com/supranational/blst/bindings/go"
)

func main() {
	agg := new(blst.P1Aggregate)
	fmt.Println(agg)
}
