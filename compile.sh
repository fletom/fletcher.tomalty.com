rm -r build/*

lessc ./src/css/global.less ./build/css/global.css
lessc ./src/css/error.less ./build/css/error.css

pygreen gen -f ./src/ ./build/
