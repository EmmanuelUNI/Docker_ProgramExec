#!/bin/bash
echo "Testing changes"
read -p "Enter the name of the file, include its extension: " filename
extension="${filename##*.}"
if [ ! -f "samples/$filename"]; then
    echo "The file does not exist."
    exit 1
fi

case "$extension" in
    py)
        cp "samples/$filename" "python/sample.py"
        docker build -t "python_sample" "python"
        docker run --rm "python_sample"
        ;;
    rb)
        cp "samples/$filename" "ruby/sample.rb"
        docker build -t "ruby_sample" "ruby"
        docker run --rm "ruby_sample"
        ;;
    java)
        cp "samples/$filename" "javaf/sample.java"
        docker build -t "java_sample" "javaf"
        docker run --rm "java_sample"
        ;;
    cpp)
        cp "samples/$filename" "c++/sample.cpp"
        docker build -t "cpp_sample" "c++"
        docker run --rm "cpp_sample"
        ;;
    js)
        cp "samples/$filename" "JavaScript/sample.js"
        docker build -t "js_sample" "JavaScript"
        docker run --rm "js_sample"
        ;;
    *)
        echo "The file extension is not supported."
        ;;
esac