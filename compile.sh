rm -r build/*
lessc --clean-css ./src/css/global.less ./build/css/global.css
pygreen gen -f ./src/ ./build/
