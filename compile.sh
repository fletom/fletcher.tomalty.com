rm -r build/*

lessc --clean-css ./src/css/global.less ./build/css/global.css
lessc --clean-css ./src/css/error.less ./build/css/error.css

pygreen gen -f ./src/ ./build/
