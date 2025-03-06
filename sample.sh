#!/bin/bash
echo "Testing changes"
read -p "Enter the name of the file, include its extension: " filename
extension="${filename##*.}"

case "$extension" in
    py)
        docker build -t "python_sample" "python"
        docker run --rm "python_sample"
        ;;
    rb)
        docker build -t "ruby_sample" "ruby"
        docker run --rm "ruby_sample"
        ;;
    java)
        docker build -t "java_sample" "java"
        docker run --rm "java_sample"
        ;;
    cpp)
        docker build -t "cpp_sample" "cpp"
        docker run --rm "cpp_sample"
        ;;
    js)
        docker build -t "js_sample" "js"
        docker run --rm "js_sample"
        ;;
    *)
        echo "The file extension is not supported."
        ;;
esac