#!/bin/bash

read -p "Enter the name of the file, include its extension: " filename
extension="${filename##*.}"
for lang in py rb java cpp js:
if [ "$extension" = "$lang" -a "$lang" = "py" ]; then
    docker build -t "python_sample" "python"
    docker run  --rm "python_sample" 
fi
else if [ "$extension" = "$lang" -a "$lang" = "rb"]; then
    docker build -t "ruby_sample" "ruby"
    docker run  --rm "ruby_sample"
fi
else if [ "$extension" = "$lang" -a "$lang" = "java" ]; then
    docker build -t "java_sample" "java"
    docker run  --rm "java_sample"
fi
else if [ "$extension" = "$lang" -a "$lang" = "cpp"  ]; then
    docker build -t "cpp_sample" "cpp"
    docker run  --rm "cpp_sample"
fi
else if [ "$extension" = "$lang" -a "$lang" = "js"]; then
    docker build -t "js_sample" "js"
    docker run --rm "js_sample"
fi
else
    echo "The file extension is not supported."
fi    
done