# Docker_ProgramExec

## Contributors
- [Emmanuel David Monterrosa Duran](https://github.com/EmmanuelUNI)
- [Juan David Tirado Barrios](https://github.com/JuanDT24)

  
## Description
This project provides a way to automatically detect the programming language of a given source file, execute it inside a Docker container, and measure its execution time in milliseconds.

## Supported Languages
- Python (`.py`)
- Java (`.java`)
- C++ (`.cpp`)
- JavaScript (`.js`)
- Ruby (`.rb`)

## Prerequisites
- [Play with Docker](https://labs.play-with-docker.com/) or a local Docker installation.
- Git installed.

## Setup and Execution Instructions

1. **Clone the repository**
   ```sh
   git clone https://github.com/EmmanuelUNI/Docker_ProgramExec.git
   ```

2. **Navigate to the project directory**
   ```sh
   cd Docker_ProgramExec
   ```

3. **Run the Docker Compose service**
   ```sh
   docker compose run --rm -it sample
   ```

4. **Enter the filename**
   When prompted, enter the filename with its extension from the `/samples` directory. For example:
   ```
   sample.py
   ```

## Example Usage
```
Enter the name of the file, include its extension: sample.py
Execution time: 44 ms
```

