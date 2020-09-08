.PHONY: build dependencies clean

build:
	npx babel source --out-dir ./

dependencies:
	npm install

clean:
	rm -rf ./*.js
