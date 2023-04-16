[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)

# Springwolf AsyncApi UI
##### Use Springwolf with the [AsyncApi Initiative UI](https://github.com/asyncapi/asyncapi-react)

Demo: https://timonback.github.io/springwolf-asyncapi-ui/

:warning: This project is a proof of concept to use a different ui for [springwolf](https://github.com/springwolf/springwolf-core). At this point, I do not plan to maintain this actively. But feel free to leave a message in case you find it useful or you have suggestions.

## Usage
Refer to the [springwolf](https://github.com/springwolf/springwolf-core) project for the general setup.

Now, also add the following to your `build.gradle` file:

```groovy
repositories {
    // ...
    maven {
        url "https://maven.pkg.github.com/timonback/springwolf-asyncapi-ui"
    }
}

dependencies {
    // One of the springwolf plugins is required to build the AsyncApi document (general setup)
    implementation 'io.github.springwolf:springwolf-kafka:0.10.0'

    // Add the ui of this project
    runtimeOnly 'io.github.springwolf:springwolf-asyncapi-ui:0.1.0'
}
```

After starting the spring application, visit: `localhost:8080/springwolf/asyncapi-ui/index.html`.

## Development
1. Run `npm run build_pages` (Uses asyncApi mock data)
2. Open `./dist/index.html` in your browser

## Release

Releasing is done by running the gradle task `publish`. For local development, use `publishToMavenLocal`.

The maven package is available on github packages.
