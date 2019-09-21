.PHONY: build
build:
	GOOS=js GOARCH=wasm go build -o ./doc/main.wasm

.PHONY: prepare
prepare:
	cp "$(shell go env GOROOT)/misc/wasm/wasm_exec.js" ./doc
