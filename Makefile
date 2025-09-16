all: run

run: build/main.rom
	gb build/main.rom  --skip-bootrom -L 3000 --no-response -v infos,errors,debug --headless --restart-on-stop

build/main.rom: main.gbasm $(wildcard pages/*)
	mkdir -p build
	gbasm main.gbasm build/main.rom
