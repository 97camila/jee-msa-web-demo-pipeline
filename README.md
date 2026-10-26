# jee-msa-web-demo-pipeline
This project is a microservice developed in Java with Spring Boot, for a pipeline execution demonstration.

## Technologies Used
* Java 25: Java version used for development.
* Spring Boot 4.1.2: Framework for creating Java applications.
* Gradle: Build and dependency management tool.

## Prerequisites
Plugins that must be installed in your IDE:
* [google-java-format](https://github.com/google/google-java-format)

## Project Structure
~~~
* src
  * main
    * java
      * com.villacis.<paradigm> (traditional = web, reactive = webflux)
        * controller
        - Main.java
    * resources
      * static
      * templates
      - application.yml
      - banner.txt
  * test
- .gitignore
- build.gradle
- gradlew
- gradlew.bat
- README.md
- LICENSE
- settings.gradle
~~~

## Build the Project
```
./gradlew build
```

## Running the Microservice
```
./gradlew bootRun
```

## Example of Use
The microservice exposes a REST endpoints. Here's an example of how to interact with it:

### Endpoint: Retrieve status:API
* Method: GET
* Port: 9000
* Path: /api/status
```
* Response Body
```json
    {
        "status": "UP",
        "environment": "OpenShift Sandbox",
        "message": "Pipeline successfully executed"
    }
```

## License
This project is licensed under the MIT License. See the LICENSE file for details.

## Contact
### If you have any questions or suggestions, please feel free to contact me:
* Name: Jeferson Villacís
* E-Mail: jefersonvillacis@hotmail.com 
* GitHub: https://github.com/jefersonvillacis
* LinkedIn: https://www.linkedin.com/in/jefersonvillacis

## Thanks for checking out this project! 🚀