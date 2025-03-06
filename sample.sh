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
        start_time=$(date +%s%3N)
        docker run --rm "python_sample"
        end_time=$(date +%s%3N)
        execution_time=$((end_time - start_time))
        echo "Execution time: ${execution_time} ms"
        ;;
    rb)
    ## Same proccess but with ruby and rest of the languages
        cp "samples/$filename" "ruby/sample.rb"
        docker build -t "ruby_sample" "ruby"
        start_time=$(date +%s%3N)
        docker run --rm "ruby_sample"
        end_time=$(date +%s%3N)
        execution_time=$((end_time - start_time))
        echo "Execution time: ${execution_time} ms"
        ;;
    java)
        cp "samples/$filename" "javaf/sample.java"
        docker build -t "java_sample" "javaf"
        start_time=$(date +%s%3N)
        docker run --rm "java_sample"
        end_time=$(date +%s%3N)
        execution_time=$((end_time - start_time))
        echo "Execution time: ${execution_time} ms"
        ;;
    cpp)
        cp "samples/$filename" "c++/sample.cpp"
        docker build -t "cpp_sample" "c++"
        start_time=$(date +%s%3N)
        docker run --rm "cpp_sample"
        end_time=$(date +%s%3N)
        execution_time=$((end_time - start_time))
        echo "Execution time: ${execution_time} ms"
        ;;
    js)
        cp "samples/$filename" "JavaScript/sample.js"
        docker build -t "js_sample" "JavaScript"
        start_time=$(date +%s%3N)
        docker run --rm "js_sample"
        end_time=$(date +%s%3N)
        execution_time=$((end_time - start_time))
        echo "Execution time: ${execution_time} ms"
        ;;
    *)
    ## If the extension doesn't match any of the 5 supported languages, the script will exit
        echo "The file extension is not supported."
        ;;
esac