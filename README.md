![version](https://img.shields.io/github/v/release/springwolf/springwolf-asyncapi-ui)
![springwolf-ui](https://github.com/timonback/springwolf-asyncapi-ui/workflows/build-and-deploy/badge.svg)
[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)

# Springwolf AsyncApi UI
##### AsyncApi Web UI for Springwolf

Demo: https://demo-asyncapi-ui.springwolf.timonback.de

## Usage
Add the following dependencies:

```groovy
dependencies {
    runtimeOnly 'io.github.springwolf:springwolf-asyncapi-ui:0.1.0'
}
```

After starting the application, visit: `localhost:8080/springwolf/asyncapi-ui/index.html`.

## Development
1. Run `npm run build_pages`
2. Open `./dist/index.html` in your browser

## Release

Releasing is done by running the gradle task `publish`. For local development, use `publishToMavenLocal`.

### Setup the signing keys

If you do not have gpg keys yet, generate one with: `gpg --full-gen-key` You will need to set password.

Use the following environment variables:
- ORG_GRADLE_PROJECT_SIGNINGKEY: Output of `gpg --armor --export-secret-key`
- ORG_GRADLE_PROJECT_SIGNINGPASSWORD: Password for the gpg key
