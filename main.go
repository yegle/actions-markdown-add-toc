package main

import (
	"fmt"
	"os"
	"path/filepath"
)

func main() {
	files, err := filepath.Glob("*/*.md")
	if err != nil {
		os.Exit(1)
	}

	for _, f := range files {
		fmt.Println(f)
	}
}
