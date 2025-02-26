# Calculator Test Project

Welcome to the Calculator Test Project! This is a simple C programming exercise designed to test your skills in Docker, Makefiles, and unit testing. Here's what you need to know to get started:

## Project Structure

- **`src/`**: Contains the source files for the calculator application.
  - `calc.h`: Header file with function declarations.
  - `calc.c`: Implementation of the calculator functions.
  - `main.c`: Main entry point for the calculator application.
  - `test.c`: Entry point for running unit tests.
- **`Makefile`**: Used to compile the application and tests.
- **`Dockerfile`**: Used to build a Docker image for the application.

## Your Task

1. **Optimize the Dockerfile**: The provided Dockerfile is not optimized. Your task is to create a multi-stage Dockerfile that minimizes the final image size.
2. **Run the Application**: Use the Makefile to compile and run the calculator application.
3. **BONUS : Write Unit Tests**: Implement additional unit tests in `test.c` to ensure the calculator functions work correctly.
4. **BONUS : push the image to docker hub**: push the built docker image to docker hub (free plan) as part of the CI/CD pipeline

## How to Build and Run

1. **Build the Docker Image**:
   ```bash
   docker build -t calculator-app .
   ```

2. **Run the Docker Container**:
   ```bash
   docker run --rm calculator-app
   ```

3. **Compile and Run Tests**:
   ```bash
   make test
   ./test
   ```

## Tips

- Make sure your Dockerfile uses a lightweight base image.
- Ensure your Makefile handles dependencies correctly.
- Write comprehensive unit tests to cover edge cases.
- Integrate the tests into the build stage or into your CI/CD pipeline if you have one.

Good luck, and have fun coding! 🚀

---