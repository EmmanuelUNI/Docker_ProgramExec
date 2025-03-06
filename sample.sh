#!/bin/bash
echo "Testing changes"
##Checking if the name of the file is correct
read -p "Enter the name of the file, include its extension: " filename
extension="${filename##*.}"
if [ ! -f "samples/$filename" ]; then
    echo "The file does not exist."
    exit 1
fi
## "switch" statement to check the extension of the file
case "$extension" in
    py)
    #If the extension is.py, the file is copied to the python folder, the image is built and the container is run
        cp "samples/$filename" "python/sample.py"
        docker build -t "python_sample" "python"
        docker run --rm "python_sample"
        ;;
    rb)
    ## Same proccess but with ruby and rest of the languages
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
    ## If the extension doesn't match any of the 5 supported languages, the script will exit
        echo "The file extension is not supported."
        ;;
esac